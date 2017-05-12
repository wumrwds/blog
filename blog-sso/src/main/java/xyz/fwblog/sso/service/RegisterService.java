package xyz.fwblog.sso.service;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TUser;

public interface RegisterService {

	ResponseData checkDataAvailable(String param, int type);

	ResponseData register(TUser user);

}
