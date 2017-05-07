package xyz.fwblog.commons.pojo;

import java.util.List;


/**
 * 前台系统分页pojo
 * @author wumrwds
 * 
 */
public class PortalArticleListPage {
	private Long recordCount;
	private int pageCount;
	private int curPage;
	private List<PortalArticleEntity> articleList;

	public Long getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(Long recordCount) {
		this.recordCount = recordCount;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public List<PortalArticleEntity> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<PortalArticleEntity> articleList) {
		this.articleList = articleList;
	}

}
