package xyz.fwblog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.fwblog.pojo.TArticle;
import xyz.fwblog.pojo.TArticleExample;

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
}