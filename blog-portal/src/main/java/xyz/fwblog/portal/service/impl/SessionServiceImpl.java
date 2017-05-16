package xyz.fwblog.portal.service.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.CookieUtils;
import xyz.fwblog.commons.utils.HttpClientUtil;
import xyz.fwblog.commons.utils.JsonUtils;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.portal.service.SessionService;

@Service
public class SessionServiceImpl implements SessionService {
	@Value("${SSO_BASE_URL}")
	private String SSO_BASE_URL;

	@Value("${SSO_SESSION_SERVICE_URL}")
	private String SSO_SESSION_SERVICE_URL;

	@Value("${SSO_COOKIE_NAME}")
	private String SSO_COOKIE_NAME;

	/**
	 * 向SSO服务查询是否已登录
	 */
	@Override
	public TUser getUserByToken(HttpServletRequest request,
			HttpServletResponse response) {
		String token = CookieUtils.getCookieValue(request, SSO_COOKIE_NAME);
		if (StringUtils.isBlank(token)) {
			return null;
		}

		String getResponse = HttpClientUtil.doGet(SSO_BASE_URL
				+ SSO_SESSION_SERVICE_URL + token);

		// 不确定ResponseData内data的类型，可能为null，也可能为TUser
		ResponseData data = ResponseData.format(getResponse);

		if (data.getStatus() != 200) {
			return null;
		}

		data = ResponseData.formatToPojo(getResponse, TUser.class);
		TUser result = (TUser) data.getData();
		return result;
	}

}
