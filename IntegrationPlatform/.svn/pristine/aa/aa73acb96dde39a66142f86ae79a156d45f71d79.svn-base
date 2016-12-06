package cn.com.oking.pt.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * PT_ROLE_URL:角色的系统权限配置
 */
@Entity
@Table(name = "PT_ROLE_URL")
public class PtRoleUrl implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键:主键
	 */
	private String id;

	/**
	 * 角色名称:角色名称
	 */
	private String roleName;

	/**
	 * 系统平台地址的外键:系统平台地址的外键
	 */
	private String ptSysLinkId;

	public PtRoleUrl() {
		super();
	}

	public PtRoleUrl(String id, String roleName, String ptSysLinkId) {
		super();
		this.id = id;
		this.roleName = roleName;
		this.ptSysLinkId = ptSysLinkId;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Id
	@Column(name = "ID", length = 50, nullable = false)
	public String getId() {
		return id;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@Column(name = "ROLE_NAME", length = 50)
	public String getRoleName() {
		return roleName;
	}

	public void setPtSysLinkId(String ptSysLinkId) {
		this.ptSysLinkId = ptSysLinkId;
	}

	@Column(name = "PT_SYS_LINK_ID", length = 50)
	public String getPtSysLinkId() {
		return ptSysLinkId;
	}

	public String toString() {
		return "PtRoleUrl [id=" + id + ",roleName=" + roleName
				+ ",ptSysLinkId=" + ptSysLinkId + "]";
	}

}
