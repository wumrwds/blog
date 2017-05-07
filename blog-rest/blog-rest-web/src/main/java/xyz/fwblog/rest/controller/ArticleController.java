package xyz.fwblog.rest.controller;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleListResponse;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.ExceptionUtil;
import xyz.fwblog.commons.utils.JsonUtils;
import xyz.fwblog.rest.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Resource
	private ArticleService articleService;
	
	@RequestMapping(value="/list", produces=MediaType.APPLICATION_JSON_VALUE+";charset=utf-8")
	@ResponseBody
	public String getArticleList(String callback) {
		PortalArticleListResponse responseList = articleService.getLatestArticle();
		String json = JsonUtils.objectToJson(responseList);
		if(StringUtils.isBlank(callback))
			return json;
		return callback + "(" + json + ");";
	}
	
	@RequestMapping("/{articleId}")
	@ResponseBody
	public ResponseData getArticleById(@PathVariable Long articleId) {
		try {
			PortalArticleDetail article = articleService.getArticleById(articleId);
			return ResponseData.ok(article);
		} catch(Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
}
