package xyz.fwblog.manager.service;

import java.util.List;

import xyz.fwblog.commons.pojo.EasyUIDataGridResponse;
import xyz.fwblog.commons.pojo.EasyUITreeNode;
import xyz.fwblog.commons.pojo.ResponseData;
import xyz.fwblog.manager.pojo.TUser;

public interface UserService {

	List<EasyUITreeNode> getUserList();

	ResponseData saveUser(TUser user);

	EasyUIDataGridResponse getUserList(int pageNum, int pageSize);

	ResponseData updateUser(TUser user);

	ResponseData deleteUserByIds(Long[] ids);

}
