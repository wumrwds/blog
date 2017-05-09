package xyz.fwblog.rest.service;

import java.util.List;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.PortalArticleListResponse;

public interface ArticleService {

	PortalArticleListResponse getLatestArticle();

	PortalArticleDetail getArticleById(Long articleId);

	List<PortalArticleEntity> getArticleByUser(Long userId);

}
