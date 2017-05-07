package xyz.fwblog.manager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import xyz.fwblog.commons.pojo.PortalArticleDetail;
import xyz.fwblog.commons.pojo.PortalArticleEntity;
import xyz.fwblog.manager.pojo.TArticle;
import xyz.fwblog.manager.pojo.TArticleExample;
import xyz.fwblog.manager.pojo.TArticleExt;

public interface TArticleMapper {
    int countByExample(TArticleExample example);

    int deleteByExample(TArticleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TArticle record);

    int insertSelective(TArticle record);

    List<TArticle> selectByExample(TArticleExample example);

    TArticle selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TArticle record, @Param("example") TArticleExample example);

    int updateByExample(@Param("record") TArticle record, @Param("example") TArticleExample example);

    int updateByPrimaryKeySelective(TArticle record);

    int updateByPrimaryKey(TArticle record);
    
    List<TArticleExt> selectArticleExtList();
    
    List<PortalArticleEntity> selectAllArticlesCreatedDesc();
    
    List<PortalArticleEntity> selectAllArticles();
    
    PortalArticleDetail selectArticleById(Long id);
    
}