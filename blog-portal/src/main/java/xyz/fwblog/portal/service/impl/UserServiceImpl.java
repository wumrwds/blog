package xyz.fwblog.portal.service.impl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.HttpClientUtil;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.portal.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;

	@Value("${REST_USER_BASE_URL}")
	private String REST_USER_BASE_URL;

	@Override
	public TUser getUserInfoById(Long userId) {
		String userJSON = HttpClientUtil.doGet(REST_BASE_URL
				+ REST_USER_BASE_URL + userId);
		ResponseData response = ResponseData
				.formatToPojo(userJSON, TUser.class);
		TUser user = (TUser) response.getData();
		return user;
	}
}
