package xyz.fwblog.rest.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.manager.mapper.TUserMapper;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.rest.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private TUserMapper userMapper;
	
	/**
	 * 按用户ID查询用户
	 * @param userId
	 * @return
	 */
	@Override
	public TUser getUserById(Long userId) {
		TUser user = userMapper.selectByPrimaryKey(userId);
		return user;
	}
}
