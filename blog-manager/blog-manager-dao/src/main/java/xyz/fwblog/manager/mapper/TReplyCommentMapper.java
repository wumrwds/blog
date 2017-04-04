package xyz.fwblog.manager.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import xyz.fwblog.manager.pojo.TReplyComment;
import xyz.fwblog.manager.pojo.TReplyCommentExample;

public interface TReplyCommentMapper {
    int countByExample(TReplyCommentExample example);

    int deleteByExample(TReplyCommentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TReplyComment record);

    int insertSelective(TReplyComment record);

    List<TReplyComment> selectByExampleWithBLOBs(TReplyCommentExample example);

    List<TReplyComment> selectByExample(TReplyCommentExample example);

    TReplyComment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TReplyComment record, @Param("example") TReplyCommentExample example);

    int updateByExampleWithBLOBs(@Param("record") TReplyComment record, @Param("example") TReplyCommentExample example);

    int updateByExample(@Param("record") TReplyComment record, @Param("example") TReplyCommentExample example);

    int updateByPrimaryKeySelective(TReplyComment record);

    int updateByPrimaryKeyWithBLOBs(TReplyComment record);

    int updateByPrimaryKey(TReplyComment record);
}