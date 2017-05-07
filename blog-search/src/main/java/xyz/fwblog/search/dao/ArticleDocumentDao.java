package xyz.fwblog.search.dao;

import org.apache.solr.client.solrj.SolrQuery;

import xyz.fwblog.commons.pojo.PortalArticleListPage;

public interface ArticleDocumentDao {

	PortalArticleListPage selectDocBySolrQuery(SolrQuery query)
			throws Exception;

}
