package xyz.fwblog.portal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.HttpClientUtil;
import xyz.fwblog.portal.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;
	
	@Value("${REST_ARTICLE_BASE_URL}")
	private String REST_ARTICLE_BASE_URL;
	
	@Value("${REST_USERPAGE_BASE_URL}")
	private String REST_USERPAGE_BASE_URL;
	
	/**
	 * 调用REST服务，通过文章ID获取文章信息
	 */
	@Override
	public PortalArticleDetail getArticleById(Long articleId) {
		String articleJSON = HttpClientUtil.doGet(REST_BASE_URL + REST_ARTICLE_BASE_URL + articleId);
		ResponseData response = ResponseData.formatToPojo(articleJSON, PortalArticleDetail.class);
		PortalArticleDetail article = (PortalArticleDetail) response.getData();
		return article;
	}
	
	/**
	 * 调用REST服务，通过创建用户ID获取文章列表信息
	 */
	@Override
	public List<PortalArticleEntity> getArticleListByUser(Long userId) {
		String articleListJSON = HttpClientUtil.doGet(REST_BASE_URL + REST_USERPAGE_BASE_URL + userId);
		ResponseData response = ResponseData.formatToList(articleListJSON, PortalArticleEntity.class);
		List<PortalArticleEntity> articleList = (List<PortalArticleEntity>) response.getData();
		return articleList;
	}
}
