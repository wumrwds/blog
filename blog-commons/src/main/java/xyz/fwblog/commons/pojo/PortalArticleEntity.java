package xyz.fwblog.commons.pojo;

import java.util.Date;

/**
 * 前台页面用于显示文章列表的实体类
 * @author wumrwds
 *
 */
public class PortalArticleEntity {
	private Long userId;
	private String userPicPath;
	private String nickname;
	private Long articleId;
	private String articleTitle;
	private String articleShortContent;
	private Long catId;
	private String catName;
	private Date timeCreated;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

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

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
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

	public Long getCatId() {
		return catId;
	}

	public void setCatId(Long catId) {
		this.catId = catId;
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
