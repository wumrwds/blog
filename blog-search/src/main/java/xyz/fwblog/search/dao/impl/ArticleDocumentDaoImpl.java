package xyz.fwblog.search.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Repository;

import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.PortalArticleListPage;
import xyz.fwblog.search.dao.ArticleDocumentDao;

@Repository
public class ArticleDocumentDaoImpl implements ArticleDocumentDao {
	@Resource
	private SolrServer solrServer;
	
	/**
	 * 根据SolrQuery在Solr数据库中查询相应的Document，放入分页pojo类中
	 * @param query
	 * @return
	 * @throws Exception
	 */
	@Override
	public PortalArticleListPage selectDocBySolrQuery(SolrQuery query) throws Exception {
		QueryResponse queryResponse = solrServer.query(query);
		
		SolrDocumentList documentList = queryResponse.getResults();
		Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
		List<PortalArticleEntity> articleList = new ArrayList<PortalArticleEntity>();
		PortalArticleEntity article = null;
		String tmpStr = null;
		for (SolrDocument document : documentList) {
			article = new PortalArticleEntity();
			article.setUserId((Long)document.get("user_id"));
			article.setUserPicPath((String)document.get("user_pic"));
			article.setNickname((String)document.get("user_nickname"));
			article.setArticleId(Long.parseLong((String)document.get("id")));
			article.setArticleTitle((String)document.get("article_title"));
			article.setArticleShortContent((String)document.get("article_short_content"));
			article.setCatId((Long)document.get("category_id"));
			article.setCatName((String)document.get("category_name"));
			article.setTimeCreated((Date)document.get("article_time_created"));
			
			// 取高亮
			Map<String, List<String>> highlightingMap = highlighting.get(document.get("id"));
			List<String> title = highlightingMap.get("article_title");
			if(title != null && title.size() > 0) 
				tmpStr = title.get(0);
			else tmpStr = (String) document.get("article_title");
			article.setArticleTitle(tmpStr);
			
			List<String> desc = highlightingMap.get("article_short_content");
			if(desc != null && desc.size() > 0) 
				tmpStr = desc.get(0);
			else tmpStr = (String) document.get("article_short_content");
			article.setArticleShortContent(tmpStr);
			
			List<String> nickname = highlightingMap.get("user_nickname");
			if(nickname != null && nickname.size() > 0) 
				tmpStr = nickname.get(0);
			else tmpStr = (String) document.get("user_nickname");
			article.setNickname(tmpStr);
			
			List<String> catName = highlightingMap.get("category_name");
			if(catName != null && catName.size() > 0) 
				tmpStr = catName.get(0);
			else tmpStr = (String) document.get("category_name");
			article.setCatName(tmpStr);
			
			articleList.add(article);
		}
		PortalArticleListPage response = new PortalArticleListPage();
		response.setArticleList(articleList);
		response.setRecordCount(documentList.getNumFound());
		return response;
	}
}
