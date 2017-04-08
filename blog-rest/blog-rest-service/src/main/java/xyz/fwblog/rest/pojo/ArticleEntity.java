package xyz.fwblog.rest.pojo;

import java.util.Date;

public class ArticleEntity {
	private String userPicPath;
	private String nickname;
	private String articleUrl;
	private String articleTitle;
	private String articleShortContent;
	private String catName;
	private Date timeCreated;

	public String getUserPicPath() {
		return userPicPath;
	}

	public void setUserPicPath(String userPicPath) {
		this.userPicPath = userPicPath;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public String getArticleShortContent() {
		return articleShortContent;
	}

	public void setArticleShortContent(String articleShortContent) {
		this.articleShortContent = articleShortContent;
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
