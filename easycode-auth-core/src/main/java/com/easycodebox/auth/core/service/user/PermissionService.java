package com.easycodebox.auth.core.service.user;

import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.util.List;
import java.util.Map;

import com.easycodebox.auth.model.entity.user.Permission;
import com.easycodebox.common.enums.entity.OpenClose;
import com.easycodebox.common.enums.entity.YesNo;
import com.easycodebox.common.lang.dto.DataPage;

import freemarker.core.ParseException;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

/**
 * @author WangXiaoJin
 *
 */
public interface PermissionService {
	
	/**
	 * 权限列表
	 * @return
	 */
	List<Permission> list(Integer projectId, OpenClose status, YesNo isMenu);
	
	/**
	 * 权限详情  - 两种获取方式 1.只需要id 2.只需要projectId和url
	 * @param id
	 * @return
	 */
	Permission load(Long id, Integer projectId, String url);
	
	/**
	 * 新增权限
	 * @param permission
	 * @return	应该实现返回数据能获取到主键
	 */
	Permission add(Permission permission);
	
	/**
	 * 修改权限
	 * @param permission
	 * @return
	 */
	int update(Permission permission);
	
	/**
	 * 逻辑删除权限
	 * @param ids
	 * @return
	 */
	int remove(Long[] ids);
	
	/**
	 * 物理删除权限
	 * @param ids
	 * @return
	 */
	int removePhy(Long[] ids);
	
	/**
	 * 开启、关闭权限
	 * @param ids
	 * @param status
	 * @return
	 */
	int openClose(Long[] ids, OpenClose status);
	
	/**
	 * 权限分页
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	DataPage<Permission> page(String parentName, String projectName, 
			String permissionName, YesNo isMenu, OpenClose status, 
			String url, int pageNo, int pageSize);
	
	/**
	 * 列出已开放权限
	 * @param userId userId可为null，则显示所有的权限
	 * @return
	 * @throws Exception
	 */
	List<Long> listPermissionIds(String userId, Integer projectId);
	
	/**
	 * 列出已开放权限
	 * @param userId userId可为null，则显示所有的权限
	 * @return
	 * @throws Exception
	 */
	Map<Long, Long> listOperateCode(String userId, Integer projectId);
	
	/**
	 * 列出已开放权限
	 * @param roleId
	 * @param isMenu
	 * @return
	 */
	List<Permission> listPermissionsOfRole(int roleId, YesNo isMenu);
	
	/**
	 * 列出已开放的权限
	 * @param roleIds
	 * @param projectId
	 * @param isMenu
	 * @return
	 */
	List<Permission> listPermissionsOfRoles(Integer[] roleIds, Integer projectId, YesNo isMenu);
	
	/**
	 * 列出所有已开放的权限，每个权限上都标记了指定的用户是否有该权限
	 * @param roleIds
	 * @param projectId
	 * @param isMenu
	 * @return
	 */
	List<Permission> listAllOpsOfRoles(Integer[] roleIds, Integer projectId, YesNo isMenu);
	
	/**
	 * 从XML文件导入操作到数据库
	 * @param xml 
	 * @param orderNoStart
	 * @throws Exception
	 */
	void importFromXml(InputStream streams) throws Exception;
	
	/**
	 * 下载权限到客户端
	 * @param ftlRes
	 * @param projectId
	 * @param writer
	 * @return 返回文件名
	 */
	void exportToXml(String ftlRes, Integer projectId, Writer writer) throws TemplateException, 
		TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException;
	
	/**
	 * 列出已开放权限
	 * @param userId	userId不能为null
	 * @param projectId
	 * @param isMenu
	 * @return
	 */
	List<Permission> listPermissionsOfUser(String userId, Integer projectId, YesNo isMenu);
	
	/**
	 * 列出所有已开放权限，每个权限上都标记了指定的用户是否有该权限
	 * @param userId	userId不能为null
	 * @param projectId
	 * @param isMenu
	 * @return
	 */
	List<Permission> listAllOpsOfUser(String userId, Integer projectId, YesNo isMenu);
	
	/**
	 * 列出已开放权限
	 * 列出指定用户的权限列表，树形结构
	 * @param userId	userId不能为null
	 * @return
	 * @throws Exception
	 */
	List<Permission> listTreePermissionsOfUser(String userId, Integer projectId, YesNo isMenu);
	
	/**
	 * 列出已开放权限
	 * 列出指定角色的权限列表，树形结构
	 * @param roleId	为null，列出所有的权限
	 * @return
	 * @throws Exception
	 */
	List<Permission> listTreePermissionsByRoleId(Integer roleId, YesNo isMenu);
	
	/**
	 * 列出已开放权限
	 * 列出所有树形结构的权限，每个权限上都标记了指定的用户是否有该权限
	 * @param userId	userId 必填
	 * @return
	 * @throws Exception
	 */
	List<Permission> listAllTreePermissionsByUserId(String userId, Integer projectId, YesNo isMenu);
	
	/**
	 * 列出已开放权限
	 * 列出所有树形结构的权限，每个权限上都标记了指定的角色是否有该权限
	 * @param roleId	roleId 必填
	 * @return
	 * @throws Exception
	 */
	List<Permission> listAllTreePermissionsByRoleId(Integer roleId, YesNo isMenu);
	
	/**
	 * 列出所有的权限（树形结构）。与其他方法不一样的是，最顶级是project
	 * @return
	 */
	List<Permission> listAllGroupByProject(Integer roleId);
	
	/**
	 * 为指定角色设置权限
	 * @param roleId
	 * @param permissionIds
	 * @throws Exception
	 */
	void authoriseRole(int roleId, Long[] permissionIds);
	
	/**
	 * 修改是否是菜单
	 * @param id
	 * @param isMenu
	 * @return
	 */
	int changeIsMenu(Long id, YesNo isMenu);
	
	boolean existName(Integer projectId, String name, Long excludeId);
	
	boolean existUrl(Integer projectId, String url, Long excludeId);
	
}
