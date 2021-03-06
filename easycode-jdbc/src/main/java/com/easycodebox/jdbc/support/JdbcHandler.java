package com.easycodebox.jdbc.support;

import com.easycodebox.jdbc.entity.Entity;
import com.easycodebox.jdbc.grammar.SqlGrammar;

/**
 * @author WangXiaoJin
 *
 */
public interface JdbcHandler {

	/**
	 * 在执行save（insert sql）前执行的逻辑
	 * @param entity
	 */
	void beforeSave(Entity entity);
	
	/**
	 * 在执行update（update sql）前执行的逻辑
	 * @param entity
	 */
	void beforeUpdate(Entity entity);
	
	/**
	 * 在执行update（update sql）前执行的逻辑
	 * @param entity
	 */
	void beforeUpdate(SqlGrammar sqlGrammar);
	
	/**
	 * 获取系统用户ID - 代表此操作由系统产生
	 * @return
	 */
	Object getSysUserId();
	
	/**
	 * 获取系统用户名
	 * @return
	 */
	String getSysUsername();
	
	/**
	 * 获取创建人的属性名
	 * @return
	 */
	String getCreatorPropName();
	
	/**
	 * 获取创建时间的属性名
	 * @return
	 */
	String getCreateTimePropName();
	
	/**
	 * 获取修改人的属性名
	 * @return
	 */
	String getModifierPropName();
	
	/**
	 * 获取修改时间的属性名
	 * @return
	 */
	String getModifyTimePropName();
	
	/**
	 * 获取状态属性名
	 * @return
	 */
	String getStatusPropName();
	
	/**
	 * 获取是否删除属性名
	 * @return
	 */
	String getDeletedPropName();
	
	/**
	 * 获取代表删除状态的值
	 * @return
	 */
	Object getDeletedValue();
}
