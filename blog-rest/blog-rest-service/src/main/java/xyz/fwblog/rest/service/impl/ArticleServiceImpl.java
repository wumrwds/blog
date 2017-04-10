package xyz.fwblog.rest.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.PortalArticleListResponse;
import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.manager.pojo.TArticleExt;
import xyz.fwblog.rest.pojo.ResultList;
import xyz.fwblog.rest.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private TArticleMapper articleMapper;
	
	@Override
	public PortalArticleListResponse getLatestArticle() {
		// 取Article List
		List<PortalArticleEntity> articleList = articleMapper.selectAllArticlesCreatedDesc();
		
		PortalArticleListResponse resultList = new PortalArticleListResponse();
		resultList.setDataList(articleList);
		return resultList;
	}
}
