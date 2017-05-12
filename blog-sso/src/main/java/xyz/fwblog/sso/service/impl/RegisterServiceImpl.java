package xyz.fwblog.sso.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.mapper.TUserMapper;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.manager.pojo.TUserExample;
import xyz.fwblog.manager.pojo.TUserExample.Criteria;
import xyz.fwblog.sso.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
	@Resource
	private TUserMapper userMapper;

	/**
	 * 查询数据库内是否存在相应类型的数据，主要用于查询用户名、邮件、电话等是否被占用
	 * 
	 *  其中param是校验的数据，type为类型，
	 *  可选参数1、2、3分别代表username、phone、email
	 *  http响应状态：
	 *  	200：请求成功
	 *  	400：请求参数不合法
	 *  响应数据：
	 *  	True：数据可用，false：数据不可用
	 */
	@Override
	public ResponseData checkDataAvailable(String param, int type) {
		List<TUser> resultList;
		if(type > 0 && type < 4) {
			resultList = checkHelper(param, type);
		}
		else return ResponseData.build(400, "用户请求参数不合法");
		
		// 查不到说明可用，查到了说明已存在，不可用
		if(resultList == null || resultList.isEmpty()) {
			return ResponseData.ok(true);
		}
		else {
			return ResponseData.ok(false);
		}
	}
	
	/**
	 * 用户注册
	 * 
	 * 注册失败返回信息：
	 * 		status:400
	 * 		msg: "注册失败. 请校验数据后请再提交数据."
	 * 		data: null
	 * 
	 */
	@Override
	public ResponseData register(TUser user) {
		String loginname = user.getLoginname();
		String password = user.getPassword();
		String phone = user.getPhone();
		String email = user.getEmail();
		
		// 校验用户名密码是否为空
		if(StringUtils.isBlank(loginname) || StringUtils.isBlank(password)) {
			return ResponseData.build(400, "用户名/密码不能为空");
		}
		
		// 校验数据是否可用
		List<TUser> resultList;
		resultList = checkHelper(loginname, 1);
		if(resultList != null && !resultList.isEmpty())
			return ResponseData.build(400, "该用户名已被注册"); 
		
		resultList = checkHelper(phone, 2);
		if(resultList != null && !resultList.isEmpty())
			return ResponseData.build(400, "该手机号已存在"); 
		
		resultList = checkHelper(email, 3);
		if(resultList != null && !resultList.isEmpty())
			return ResponseData.build(400, "该邮箱已存在"); 
		
		Date now = new Date();
		user.setCreated(now);
		user.setUpdated(now);
		
		// MD5加密
		user.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
		
		userMapper.insert(user);
		
		return ResponseData.ok();
	}

	/**
	 * 校验数据是否可用的辅助方法
	 * 返回含有信息
	 * @param param
	 * @param type
	 * @return
	 */
	private List<TUser> checkHelper(String param, int type) {
		TUserExample example = new TUserExample();
		Criteria criteria = example.createCriteria();
		switch (type) {
		case 1:
			criteria.andLoginnameEqualTo(param);
			break;
		case 2:
			criteria.andPhoneEqualTo(param);
			break;
		case 3:
			criteria.andEmailEqualTo(param);
			break;
		}
		List<TUser> resultList = userMapper.selectByExample(example);
		return resultList;
	}
}
