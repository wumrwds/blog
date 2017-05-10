package xyz.fwblog.portal.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.portal.service.ArticleService;
import xyz.fwblog.portal.service.UserService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	@Resource
	private ArticleService articleService;

	@Resource
	private UserService userService;

	@RequestMapping("/{userId}/{articleId}")
	public String showArticlePage(@PathVariable Long userId,
			@PathVariable Long articleId, Model model) {
		PortalArticleDetail article = articleService.getArticleById(articleId);
		TUser user = userService.getUserInfoById(userId);
		model.addAttribute("article", article);
		model.addAttribute("user", user);
		return "article_detail";
	}

	@RequestMapping("/{userId}")
	public String showArticlePage(@PathVariable Long userId, Model model) {
		List<PortalArticleEntity> articleList = articleService
				.getArticleListByUser(userId);
		TUser user = userService.getUserInfoById(userId);
		model.addAttribute("articleList", articleList);
		model.addAttribute("user", user);
		return "user_page";
	}
}
