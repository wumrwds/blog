package xyz.fwblog.manager.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TArticle;
import xyz.fwblog.manager.pojo.TArticleDetail;
import xyz.fwblog.manager.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	@Resource
	private ArticleService articleService;

	@RequestMapping("/save")
	@ResponseBody
	public ResponseData saveArticle(TArticle article,
			TArticleDetail articleDetail) {
		return articleService.createArticle(article, articleDetail);
	}

	@RequestMapping("/list")
	@ResponseBody
	public EasyUIDataGridResponse getArticleList(int page, int rows) {
		return articleService.getArticleList(page, rows);
	}

	@RequestMapping("/detail/{id}")
	@ResponseBody
	public ResponseData getArticleContent(@PathVariable Long id) {
		return articleService.getArticleDetail(id);
	}

	@RequestMapping("/update")
	@ResponseBody
	public ResponseData updateArticle(TArticle article,
			TArticleDetail articleDetail) {
		return articleService.updateArticle(article, articleDetail);
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ResponseData deleteArticle(String ids) {
		String[] idsStr = ids.split(",");
		Long[] idsLong = new Long[idsStr.length];
		for (int i = 0; i < idsStr.length; i++) {
			idsLong[i] = Long.parseLong(idsStr[i]);
		}
		return articleService.deleteArticles(idsLong);
	}
}
