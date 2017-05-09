package xyz.fwblog.portal.service;

import java.util.List;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;

public interface ArticleService {

	PortalArticleDetail getArticleById(Long articleId);

	List<PortalArticleEntity> getArticleListByUser(Long userId);

}
