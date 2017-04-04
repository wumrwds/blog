package xyz.fwblog.manager.pojo;

import java.util.Date;

public class TCommentArticle {
    private Long id;

    private Long commentUserId;

    private Long commentedArticleId;

    private Date created;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCommentUserId() {
        return commentUserId;
    }

    public void setCommentUserId(Long commentUserId) {
        this.commentUserId = commentUserId;
    }

    public Long getCommentedArticleId() {
        return commentedArticleId;
    }

    public void setCommentedArticleId(Long commentedArticleId) {
        this.commentedArticleId = commentedArticleId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}