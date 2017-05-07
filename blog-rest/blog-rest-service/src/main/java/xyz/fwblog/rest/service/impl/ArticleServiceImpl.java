package xyz.fwblog.rest.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.PortalArticleListResponse;
import xyz.fwblog.manager.mapper.TArticleDetailMapper;
import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.rest.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private TArticleMapper articleMapper;
	
	/**
	 * 首页最新文章列表显示
	 */
	@Override
	public PortalArticleListResponse getLatestArticle() {
		// 取Article List
		List<PortalArticleEntity> articleList = articleMapper.selectAllArticlesCreatedDesc();
		
		PortalArticleListResponse resultList = new PortalArticleListResponse();
		resultList.setDataList(articleList);
		return resultList;
	}
	
	/**
	 * 文章详细显示
	 */
	@Override
	public PortalArticleDetail getArticleById(Long articleId) {
		PortalArticleDetail article = articleMapper.selectArticleById(articleId);
		return article;
	}
}
