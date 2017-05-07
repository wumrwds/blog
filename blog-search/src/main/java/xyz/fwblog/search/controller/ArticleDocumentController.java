package xyz.fwblog.search.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.PortalArticleListPage;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.ExceptionUtil;
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

	@RequestMapping("/query")
	@ResponseBody
	public ResponseData search(@RequestParam(defaultValue = "") String query,
			@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "20") Integer rows) {
		try {
			query = new String(query.getBytes("iso8859-1"), "utf-8");
			PortalArticleListPage search = articleDocumentService.search(query, page, rows);
			return ResponseData.ok(search);
		} catch(Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
}
