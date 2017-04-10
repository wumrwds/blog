package xyz.fwblog.search.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.search.service.ArticleDocumentService;

@Controller
public class ArticleDocumentController {
	@Resource
	private ArticleDocumentService articleDocumentService;
	
	@RequestMapping("/importAll")
	@ResponseBody
	public ResponseData importAllArticles() {
		return articleDocumentService.importAllArticles();
	}
}
