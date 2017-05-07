package xyz.fwblog.portal.service;

import xyz.fwblog.commons.pojo.PortalArticleListPage;

public interface SearchService {

	PortalArticleListPage search(String query, Integer page, Integer rows);

}
