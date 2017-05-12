package xyz.fwblog.sso.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.CookieUtils;
import xyz.fwblog.commons.utils.JsonUtils;
import xyz.fwblog.manager.mapper.TUserMapper;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.manager.pojo.TUserExample;
import xyz.fwblog.manager.pojo.TUserExample.Criteria;
import xyz.fwblog.sso.component.JedisClient;
import xyz.fwblog.sso.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Resource
	private TUserMapper userMapper;

	@Resource
	private JedisClient jedisClient;

	@Value("${REDIS_SESSION_KEY_HEADER}")
	private String REDIS_SESSION_KEY_HEADER;

	@Value("${REDIS_SESSION_TTL}")
	private Integer REDIS_SESSION_TTL;

	@Value("${COOKIE_NAME}")
	private String COOKIE_NAME;

	@Override
	public ResponseData login(String loginname, String password,
			HttpServletRequest request, HttpServletResponse response) {
		TUser user = getUserByLNameAndPwd(loginname, password);
		if (user == null)
			return ResponseData.build(400, "用户名不存在或密码错误");

		// 清空密码
		user.setPassword(null);

		// 生成Session的token，作为存入Redis时的key
		String token = UUID.randomUUID().toString();

		// REDIS_SESSION_KEY_HEADER为存入的key的前缀
		jedisClient.set(REDIS_SESSION_KEY_HEADER + token,
				JsonUtils.objectToJson(user));
		jedisClient.expire(REDIS_SESSION_KEY_HEADER + token, REDIS_SESSION_TTL);
		
		CookieUtils.setCookie(request, response, COOKIE_NAME, token);
		
		return ResponseData.ok(token);
	}

	/**
	 * 按用户名和密码向数据库查询用户
	 */
	private TUser getUserByLNameAndPwd(String loginname, String password) {
		// 先按用户名查，没查到，直接返回; 查到了，继续校验密码是否正确，再作返回
		TUserExample example = new TUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andLoginnameEqualTo(loginname);
		List<TUser> userList = userMapper.selectByExample(example);

		if (userList == null || userList.isEmpty())
			return null;

		TUser user = userList.get(0);

		if (DigestUtils.md5DigestAsHex(password.getBytes()).equals(
				user.getPassword())) {
			return user;
		}
		return null;
	}
}
