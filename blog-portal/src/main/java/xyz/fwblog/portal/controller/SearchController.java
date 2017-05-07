package xyz.fwblog.portal.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.fwblog.commons.pojo.PortalArticleListPage;
import xyz.fwblog.portal.service.SearchService;

@Controller
public class SearchController {
	@Resource
	private SearchService searchService;

	@RequestMapping("/search")
	public String search(
			@RequestParam("query") String query,
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "20") int rows, Model model) {
		try {
			query = new String(query.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			query = "";
		}
		
		PortalArticleListPage searchResult = searchService.search(query, page, rows);
		model.addAttribute("articleList", searchResult.getArticleList());
		model.addAttribute("page", searchResult.getCurPage());
		model.addAttribute("totalPages", searchResult.getPageCount());
		model.addAttribute("query", query);
		return "search";
	}
}
