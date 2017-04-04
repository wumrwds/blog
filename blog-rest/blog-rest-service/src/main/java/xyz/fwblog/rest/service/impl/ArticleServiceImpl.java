package xyz.fwblog.rest.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.manager.pojo.TArticle;
import xyz.fwblog.manager.pojo.TArticleExample;
import xyz.fwblog.rest.pojo.ArticleEntity;
import xyz.fwblog.rest.pojo.ResultList;
import xyz.fwblog.rest.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private TArticleMapper articleMapper;
	
	@Override
	public ResultList getLatestArticle() {
		TArticleExample example = new TArticleExample();
		List<TArticle> list = articleMapper.selectByExample(example);
		
		List<ArticleEntity> dataList = new ArrayList<ArticleEntity>();
		ArticleEntity item = null;
		for (TArticle tArticle : list) {
			item = new ArticleEntity();
			item.setArticleTitle(tArticle.getTitle());
			item.setTimeCreated(tArticle.getCreated());
			item.setArticleShortDetail(tArticle.getContentShort());
			dataList.add(item);
		}
		
		ResultList resultList = new ResultList();
		resultList.setDataList(dataList);
		return resultList;
	}
}
