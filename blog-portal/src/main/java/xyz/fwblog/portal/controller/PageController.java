package xyz.fwblog.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用于页面跳转
 * @author wumrwds
 *
 */

@Controller
public class PageController {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/page/{page}")
	public String turnToPage(@PathVariable String page) {
		return page;
	}
}
