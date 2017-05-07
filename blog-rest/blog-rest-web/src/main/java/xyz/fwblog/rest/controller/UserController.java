package xyz.fwblog.rest.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.rest.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/{userId}")
	@ResponseBody
	public ResponseData getUserById(@PathVariable Long userId) {
		TUser user = userService.getUserById(userId);
		if(user != null)
			return ResponseData.ok(user);
		return ResponseData.build(500, "无所查用户");
	}
}
