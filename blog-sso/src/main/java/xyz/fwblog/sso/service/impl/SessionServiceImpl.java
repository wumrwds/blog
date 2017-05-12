package xyz.fwblog.sso.service.impl;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.JsonUtils;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.sso.component.JedisClient;
import xyz.fwblog.sso.service.SessionService;

@Service
public class SessionServiceImpl implements SessionService {
	@Resource
	private JedisClient jedisClient;
	
	@Value("${REDIS_SESSION_KEY_HEADER}")
	private String REDIS_SESSION_KEY_HEADER;

	@Value("${REDIS_SESSION_TTL}")
	private Integer REDIS_SESSION_TTL;
	
	/**
	 * 根据token从Redis中查询用户信息
	 *
	 * 查询完后需要更新session生存时间
	 */
	@Override
	public ResponseData getUserByToken(String token) {
		String key = REDIS_SESSION_KEY_HEADER + token;
		String userJSON = jedisClient.get(key);
		
		// 检查session是否过期
		if(StringUtils.isBlank(userJSON)) {
			return ResponseData.build(400, "登录已过期，请重新登录");
		}
		
		TUser user = JsonUtils.jsonToPojo(userJSON, TUser.class);
		jedisClient.expire(key, REDIS_SESSION_TTL);
		return ResponseData.ok(user);
	}
	
	/**
	 * 删除该session内容，用于安全退出
	 */
	@Override
	public ResponseData deleteToken(String token) {
		String key = REDIS_SESSION_KEY_HEADER + token;
		jedisClient.del(key);
		return ResponseData.ok();
	}
}
