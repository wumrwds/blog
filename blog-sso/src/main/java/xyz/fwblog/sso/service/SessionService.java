package xyz.fwblog.sso.service;

import xyz.fwblog.commons.pojo.ResponseData;

public interface SessionService {

	ResponseData getUserByToken(String token);

	ResponseData deleteToken(String token);

}
