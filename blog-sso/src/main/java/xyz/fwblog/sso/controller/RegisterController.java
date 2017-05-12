package xyz.fwblog.sso.controller;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.sso.service.RegisterService;

@Controller
public class RegisterController {
	@Resource
	private RegisterService registerService;

	@RequestMapping("/user/check/{param}/{type}")
	@ResponseBody
	public Object checkData(@PathVariable String param, @PathVariable int type,
			String callback) {

		ResponseData response = registerService.checkDataAvailable(param, type);

		if (StringUtils.isNotBlank(callback)) {
			MappingJacksonValue JSONPResponse = new MappingJacksonValue(
					response);
			JSONPResponse.setJsonpFunction("callback");
			return JSONPResponse;
		}
		return response;
	}
	
	@RequestMapping(value="/user/register", method=RequestMethod.POST)
	@ResponseBody
	public ResponseData register(TUser user) {
		return registerService.register(user);
	}
}
