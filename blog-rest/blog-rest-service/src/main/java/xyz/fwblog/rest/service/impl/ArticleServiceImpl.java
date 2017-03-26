package xyz.fwblog.rest.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.mapper.TArticleMapper;
import xyz.fwblog.pojo.TArticle;
import xyz.fwblog.pojo.TArticleExample;
import xyz.fwblog.pojo.TArticleExample.Criteria;
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
			item.setTimeCreated(tArticle.getTimeCreated());
			item.setArticleShortDetail(tArticle.getDetailShort());
			dataList.add(item);
		}
		
		ResultList resultList = new ResultList();
		resultList.setDataList(dataList);
		return resultList;
	}
}
