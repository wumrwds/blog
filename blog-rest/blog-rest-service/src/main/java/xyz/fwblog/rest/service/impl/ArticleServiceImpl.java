package xyz.fwblog.rest.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.manager.pojo.TArticleExt;
import xyz.fwblog.rest.pojo.ArticleEntity;
import xyz.fwblog.rest.pojo.ResultList;
import xyz.fwblog.rest.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private TArticleMapper articleMapper;
	
	@Override
	public ResultList getLatestArticle() {
		// 取Article List
		List<TArticleExt> list = articleMapper.selectArticleExtListCreatedDesc();
		
		// 封装到ResultList中
		List<ArticleEntity> dataList = new ArrayList<ArticleEntity>();
		ArticleEntity item = null;
		for (TArticleExt tArticle : list) {
			item = new ArticleEntity();
			item.setUserPicPath(tArticle.getPic());
			item.setNickname(tArticle.getNickName());
			
			// TODO Article Url 暂未完成
			item.setArticleUrl("#");
			item.setArticleTitle(tArticle.getTitle());
			item.setArticleShortContent(tArticle.getContentShort());
			item.setCatName(tArticle.getCategoryName());
			item.setTimeCreated(tArticle.getCreated());
			dataList.add(item);
		}
		
		ResultList resultList = new ResultList();
		resultList.setDataList(dataList);
		return resultList;
	}
}
