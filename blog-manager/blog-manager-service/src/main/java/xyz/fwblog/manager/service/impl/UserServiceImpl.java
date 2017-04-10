package xyz.fwblog.manager.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.EasyUITreeNode;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.commons.utils.ExceptionUtil;
import xyz.fwblog.manager.mapper.TUserMapper;
import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.manager.pojo.TUserExample;
import xyz.fwblog.manager.service.UserService;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private TUserMapper userMapper;

	@Override
	public List<EasyUITreeNode> getUserList() {
		TUserExample example = new TUserExample();
		example.setOrderByClause("loginname asc");
		List<TUser> list = userMapper.selectByExample(example);
		List<EasyUITreeNode> resultList = new ArrayList<EasyUITreeNode>();
		EasyUITreeNode node = null;
		for (TUser tUser : list) {
			node = new EasyUITreeNode();
			node.setId(tUser.getId());
			node.setState("open");
			node.setText(tUser.getLoginname());
			resultList.add(node);
		}
		return resultList;
	}
	
	@Override
	public ResponseData saveUser(TUser user) {
		try {
			Date now = new Date();
			user.setCreated(now);
			user.setUpdated(now);
			userMapper.insertSelective(user);
			return ResponseData.ok();
		} catch(Exception e) {
			//TODO 这里因为数据库表结构设置了email，phone这些为unique key
			//     假如email这些插入重了，还需要根据具体信息打印一下错误信息
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
	
	@Override
	public EasyUIDataGridResponse getUserList(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		TUserExample example = new TUserExample();
		List<TUser> list = userMapper.selectByExample(example);
		
		EasyUIDataGridResponse response = new EasyUIDataGridResponse();
		response.setTotal(((Page<TUser>)list).getTotal());
		response.setRows(list);
		return response;
	}
	
	@Override
	public ResponseData updateUser(TUser user) {
		try {
			Date now = new Date();
			user.setUpdated(now);
			userMapper.updateByPrimaryKeySelective(user);
			return ResponseData.ok();
		} catch(Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
	
	@Override
	public ResponseData deleteUserByIds(Long[] ids) {
		try {
			for (Long id : ids) {
				userMapper.deleteByPrimaryKey(id);
			}
			return ResponseData.ok();
		} catch(Exception e) {
			e.printStackTrace();
			return ResponseData.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
}
