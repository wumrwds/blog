package xyz.fwblog.search.service;

import xyz.fwblog.commons.pojo.PortalArticleListPage;
import xyz.fwblog.commons.pojo.ResponseData;

public interface ArticleDocumentService {

	ResponseData importAllArticles();

	PortalArticleListPage search(String queryString, int page, int rows)
			throws Exception;

}
