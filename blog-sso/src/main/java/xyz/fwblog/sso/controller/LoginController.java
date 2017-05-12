package xyz.fwblog.sso.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.sso.service.LoginService;

@Controller
public class LoginController {
	@Resource
	private LoginService loginService;

	@RequestMapping(value="/user/login", method=RequestMethod.POST)
	@ResponseBody
	public ResponseData login(String loginname, String password,
			HttpServletRequest request, HttpServletResponse response) {
		ResponseData result = loginService.login(loginname, password,
				request, response);
		return result;
	}
}
