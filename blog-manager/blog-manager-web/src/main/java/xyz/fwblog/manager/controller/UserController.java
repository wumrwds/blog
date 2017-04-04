package xyz.fwblog.manager.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.EasyUITreeNode;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.manager.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/treeList")
	@ResponseBody
	public List<EasyUITreeNode> getUserTreeList() {
		return userService.getUserList();
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public ResponseData addUser(TUser user) {
		return userService.saveUser(user);
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIDataGridResponse getUserList(int page, int rows) {
		return userService.getUserList(page, rows);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ResponseData updateUser(TUser user) {
		return userService.updateUser(user);
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ResponseData deleteUsers(String ids) {
		String[] idsStr = ids.split(",");
		Long[] idsLong = new Long[idsStr.length];
		for (int i = 0; i < idsStr.length; i++) {
			idsLong[i] = Long.parseLong(idsStr[i]);
		}
		return userService.deleteUserByIds(idsLong);
	}
}
