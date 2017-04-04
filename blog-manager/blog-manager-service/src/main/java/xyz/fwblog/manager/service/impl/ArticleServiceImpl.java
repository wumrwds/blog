package xyz.fwblog.manager.service.impl;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.commons.net.ftp.parser.RegexFTPFileEntryParserImpl;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.IDUtils;
import xyz.fwblog.manager.mapper.TArticleDetailMapper;
import xyz.fwblog.manager.mapper.TArticleMapper;
import xyz.fwblog.manager.pojo.TArticle;
import xyz.fwblog.manager.pojo.TArticleDetail;
import xyz.fwblog.manager.pojo.TArticleDetailExample;
import xyz.fwblog.manager.pojo.TArticleDetailExample.Criteria;
import xyz.fwblog.manager.pojo.TArticleExample;
import xyz.fwblog.manager.pojo.TArticleExt;
import xyz.fwblog.manager.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private TArticleMapper articleMapper;

	@Resource
	private TArticleDetailMapper articleDetailMapper;

	@Override
	public ResponseData createArticle(TArticle article, TArticleDetail articleDetail) {
		try {
			// 生成一个以当前时间为基准的大数作为ID
			long id = IDUtils.genItemId();
			Date now = new Date();
			article.setCreated(now);
			article.setUpdated(now);
			articleDetail.setCreated(now);
			articleDetail.setUpdated(now);
			article.setId(id);
			articleDetail.setArticleId(id);
			String content = articleDetail.getContent();
			article.setContentShort(content.substring(0, Math.min(149, content.length()-1)));

			// 插入到数据库
			articleMapper.insert(article);
			articleDetailMapper.insert(articleDetail);
			return ResponseData.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, "创建文章失败");
		}
	}
	
	@Override
	public EasyUIDataGridResponse getArticleList(int pageNum, int pageSize) {
		// 设置分页属性（整个PageHelper是一个 mybatis inceptor）
		PageHelper.startPage(pageNum, pageSize);
		
		// 查询, 通过拦截器，返回的是包装过的Page对象，记录了total等信息
		List<TArticleExt> list = articleMapper.selectArticleExtList();
		
		EasyUIDataGridResponse response = new EasyUIDataGridResponse();
		response.setRows(list);
		response.setTotal(((Page<TArticleExt>)list).getTotal());
		
		return response;
	}
	
	@Override
	public ResponseData getArticleDetail(Long id) {
		TArticleDetailExample example = new TArticleDetailExample();
		Criteria criteria = example.createCriteria();
		criteria.andArticleIdEqualTo(id);
		List<TArticleDetail> list = articleDetailMapper.selectByExampleWithBLOBs(example);
		if(list.size() > 0)
			return ResponseData.ok(list.get(0));
		return ResponseData.build(500, "查询文章内容出错");
	}
	
	@Override
	public ResponseData updateArticle(TArticle article, TArticleDetail articleDetail) {
		try {
			Date now = new Date();
			article.setUpdated(now);
			articleDetail.setUpdated(now);
			
			// 更新ContentShort
			String content = articleDetail.getContent();
			// 正则，目的在于消除所有html标签
			String regex = "<.+?>";
			Pattern pattern = Pattern.compile(regex);
			Matcher matcher = pattern.matcher(content);
			content = matcher.replaceAll("");
			article.setContentShort(content.substring(0, Math.min(149, content.length()-1)));
			
			// 设置id
			articleDetail.setArticleId(article.getId());
			
			// selective查看xml文件后，发现是为null不更新，也包涵了Blob，
			// 这样created这些null属性就不会更新过去了
			articleMapper.updateByPrimaryKeySelective(article);
			articleDetailMapper.updateByPrimaryKeySelective(articleDetail);
			return ResponseData.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, "更新文章出错");
		}
	}
	
	@Override
	public ResponseData deleteArticles(Long[] ids) {
		if(ids.length > 0) {
			try {
				for (Long id : ids) {
					articleMapper.deleteByPrimaryKey(id);
					articleDetailMapper.deleteByPrimaryKey(id);
				}
				return ResponseData.ok();
			} catch(Exception e) {
				e.printStackTrace();
				return ResponseData.build(500, "删除出错");
			}
		}
		else return ResponseData.build(500, "没有要指定删除的文章ID");
	}
}
