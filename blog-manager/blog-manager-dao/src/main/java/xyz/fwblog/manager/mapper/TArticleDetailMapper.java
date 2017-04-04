package xyz.fwblog.manager.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.fwblog.manager.pojo.TArticleDetail;
import xyz.fwblog.manager.pojo.TArticleDetailExample;

public interface TArticleDetailMapper {
    int countByExample(TArticleDetailExample example);

    int deleteByExample(TArticleDetailExample example);

    int deleteByPrimaryKey(Long articleId);

    int insert(TArticleDetail record);

    int insertSelective(TArticleDetail record);

    List<TArticleDetail> selectByExampleWithBLOBs(TArticleDetailExample example);

    List<TArticleDetail> selectByExample(TArticleDetailExample example);

    TArticleDetail selectByPrimaryKey(Long articleId);

    int updateByExampleSelective(@Param("record") TArticleDetail record, @Param("example") TArticleDetailExample example);

    int updateByExampleWithBLOBs(@Param("record") TArticleDetail record, @Param("example") TArticleDetailExample example);

    int updateByExample(@Param("record") TArticleDetail record, @Param("example") TArticleDetailExample example);

    int updateByPrimaryKeySelective(TArticleDetail record);

    int updateByPrimaryKeyWithBLOBs(TArticleDetail record);

    int updateByPrimaryKey(TArticleDetail record);
}