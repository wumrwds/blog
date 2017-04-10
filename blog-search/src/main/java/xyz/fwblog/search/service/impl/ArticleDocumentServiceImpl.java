package xyz.fwblog.search.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.ExceptionUtil;
import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.search.service.ArticleDocumentService;

@Service
public class ArticleDocumentServiceImpl implements ArticleDocumentService {
	@Resource
	private TArticleMapper articleMapper;
	
	@Resource
	private SolrServer httpSolrServer;
	
	/**
	 * 导入所有数据库中的Article数据到Solr服务中
	 */
	@Override
	public ResponseData importAllArticles() {
		try {
			List<PortalArticleEntity> articleList = articleMapper.selectAllArticles();
			List<SolrInputDocument> docList = new ArrayList<SolrInputDocument>();
			SolrInputDocument doc = null;
			for (PortalArticleEntity article : articleList) {
				doc = new SolrInputDocument();
				doc.addField("id", article.getArticleId());
				doc.addField("user_id", article.getUserId());
				doc.addField("user_pic", article.getUserPicPath());
				doc.addField("user_nickname", article.getNickname());
				doc.addField("article_title", article.getArticleTitle());
				doc.addField("article_short_content", article.getArticleShortContent());
				doc.addField("category_id", article.getCatId());
				doc.addField("category_name", article.getCatName());
				doc.addField("article_time_created", article.getTimeCreated());
				docList.add(doc);
			}
			httpSolrServer.add(docList);
			httpSolrServer.commit();
			return ResponseData.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		} 
	}
}
