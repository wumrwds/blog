package xyz.fwblog.portal.service.impl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.HttpClientUtil;
import xyz.fwblog.portal.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;
	
	@Value("${REST_ARTICLE_BASE_URL}")
	private String REST_ARTICLE_BASE_URL;
	
	@Override
	public PortalArticleDetail getArticleById(Long articleId) {
		String articleJSON = HttpClientUtil.doGet(REST_BASE_URL + REST_ARTICLE_BASE_URL + articleId);
		ResponseData response = ResponseData.formatToPojo(articleJSON, PortalArticleDetail.class);
		PortalArticleDetail article = (PortalArticleDetail) response.getData();
		return article;
	}
}
