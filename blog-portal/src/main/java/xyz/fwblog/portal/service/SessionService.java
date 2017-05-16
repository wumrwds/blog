package xyz.fwblog.portal.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.fwblog.manager.pojo.TUser;

public interface SessionService {

	TUser getUserByToken(HttpServletRequest request,
			HttpServletResponse response);

}
