package xyz.fwblog.sso.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.fwblog.commons.pojo.ResponseData;

public interface LoginService {

	ResponseData login(String loginname, String password,
			HttpServletRequest request, HttpServletResponse response);

}
