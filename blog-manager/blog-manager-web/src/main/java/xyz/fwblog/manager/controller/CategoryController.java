package xyz.fwblog.manager.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.fwblog.commons.pojo.EasyUITreeNode;
import xyz.fwblog.manager.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Resource
	private CategoryService categoryService;
	
	@RequestMapping("/treeList")
	@ResponseBody
	public List<EasyUITreeNode> getCatTreeList() {
		return categoryService.getCatList();
	}
	
}
