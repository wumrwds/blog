package xyz.fwblog.sso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class PageController {
	
	/**
	 * redirectURL是登录拦截器在拦截后转发至登录页面的请求参数
	 * redirectURL记录下了的跳转至登录页面之前的URL
	 * 
	 * 封装到Model里，在前端页面通过EL表达式去到，利用js的location进行跳转
	 */
	@RequestMapping("/login")
	public String login(String redirectURL,Model model) {
		model.addAttribute("redirect", redirectURL);
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
}
