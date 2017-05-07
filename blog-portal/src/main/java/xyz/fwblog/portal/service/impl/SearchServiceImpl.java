package xyz.fwblog.portal.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleListPage;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.HttpClientUtil;
import xyz.fwblog.portal.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
	@Value("${SEARCH_SERVER_BASE_URL}")
	private String SEARCH_SERVER_BASE_URL;
	
	/**
	 * 利用WebService调用search服务的搜索业务,得到搜索结果
	 * @param keyword
	 * @param page
	 * @param rows
	 * @return
	 */
	@Override
	public PortalArticleListPage search(String query, Integer page, Integer rows) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("query", query);
		params.put("page", page.toString());
		params.put("rows", rows.toString());
		String responseJson = HttpClientUtil.doGet(SEARCH_SERVER_BASE_URL, params);
		ResponseData responseData = ResponseData.formatToPojo(responseJson, PortalArticleListPage.class);
		PortalArticleListPage searchResult = (PortalArticleListPage)responseData.getData();
		return searchResult;
	}
}
