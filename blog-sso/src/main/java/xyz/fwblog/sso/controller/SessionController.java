package xyz.fwblog.sso.controller;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.sso.service.SessionService;

@Controller
public class SessionController {
	@Resource
	private SessionService sessionService;
	
	@RequestMapping("/user/token/{token}")
	@ResponseBody
	public Object getUserByToken(@PathVariable String token, String callback) {
		ResponseData userData = sessionService.getUserByToken(token);
		if(StringUtils.isNotBlank(callback)) {
			MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(userData);
			mappingJacksonValue.setJsonpFunction(callback);
			return mappingJacksonValue;
		}
		return userData;
	}
	
	@RequestMapping("/user/logout/{token}")
	@ResponseBody
	public Object logout(@PathVariable String token, String callback) {
		ResponseData response = sessionService.deleteToken(token);
		if(StringUtils.isNotBlank(callback)) {
			MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(response);
			mappingJacksonValue.setJsonpFunction(callback);
			return mappingJacksonValue;
		}
		return response;
	}
}
