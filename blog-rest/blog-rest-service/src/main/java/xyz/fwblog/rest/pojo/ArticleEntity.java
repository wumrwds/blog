package xyz.fwblog.rest.pojo;

import java.util.Date;

public class ArticleEntity {
	private String userPicPath;
	private String userName;
	private String articleUrl;
	private String articleTitle;
	private String articleShortDetail;
	private String catName;
	private Date timeCreated;

	public String getUserPicPath() {
		return userPicPath;
	}

	public void setUserPicPath(String userPicPath) {
		this.userPicPath = userPicPath;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getArticleUrl() {
		return articleUrl;
	}

	public void setArticleUrl(String articleUrl) {
		this.articleUrl = articleUrl;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleShortDetail() {
		return articleShortDetail;
	}

	public void setArticleShortDetail(String articleShortDetail) {
		this.articleShortDetail = articleShortDetail;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public Date getTimeCreated() {
		return timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

}
