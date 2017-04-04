package xyz.fwblog.manager.service;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TArticle;
import xyz.fwblog.manager.pojo.TArticleDetail;

public interface ArticleService {

	ResponseData createArticle(TArticle article, TArticleDetail articleDetail);

	EasyUIDataGridResponse getArticleList(int pageNum, int pageSize);

	ResponseData getArticleDetail(Long id);

	ResponseData updateArticle(TArticle article, TArticleDetail articleDetail);

	ResponseData deleteArticles(Long[] ids);


}
