package xyz.fwblog.manager.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xyz.fwblog.commons.pojo.EasyUITreeNode;
import xyz.fwblog.manager.mapper.TCategoryMapper;
import xyz.fwblog.manager.pojo.TCategory;
import xyz.fwblog.manager.pojo.TCategoryExample;
import xyz.fwblog.manager.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Resource
	private TCategoryMapper categoryMapper;
	
	@Override
	public List<EasyUITreeNode> getCatList() {
		TCategoryExample example = new TCategoryExample();
		List<TCategory> list = categoryMapper.selectByExample(example);
		List<EasyUITreeNode> resultList = new ArrayList<EasyUITreeNode>();
		EasyUITreeNode node = null;
		for (TCategory tCategory : list) {
			node = new EasyUITreeNode();
			node.setId(tCategory.getId());
			node.setState("open");
			node.setText(tCategory.getCategoryName());
			resultList.add(node);
		}
		return resultList;
	}
}
