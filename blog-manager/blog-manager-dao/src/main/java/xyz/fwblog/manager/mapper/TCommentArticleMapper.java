package xyz.fwblog.manager.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.fwblog.manager.pojo.TCommentArticle;
import xyz.fwblog.manager.pojo.TCommentArticleExample;

public interface TCommentArticleMapper {
    int countByExample(TCommentArticleExample example);

    int deleteByExample(TCommentArticleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TCommentArticle record);

    int insertSelective(TCommentArticle record);

    List<TCommentArticle> selectByExampleWithBLOBs(TCommentArticleExample example);

    List<TCommentArticle> selectByExample(TCommentArticleExample example);

    TCommentArticle selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TCommentArticle record, @Param("example") TCommentArticleExample example);

    int updateByExampleWithBLOBs(@Param("record") TCommentArticle record, @Param("example") TCommentArticleExample example);

    int updateByExample(@Param("record") TCommentArticle record, @Param("example") TCommentArticleExample example);

    int updateByPrimaryKeySelective(TCommentArticle record);

    int updateByPrimaryKeyWithBLOBs(TCommentArticle record);

    int updateByPrimaryKey(TCommentArticle record);
}