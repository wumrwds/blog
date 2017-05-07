package xyz.fwblog.portal.service;

import xyz.fwblog.commons.pojo.PortalArticleDetail;

public interface ArticleService {

	PortalArticleDetail getArticleById(Long articleId);

}
