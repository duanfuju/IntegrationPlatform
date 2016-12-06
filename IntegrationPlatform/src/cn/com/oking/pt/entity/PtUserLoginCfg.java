package cn.com.oking.pt.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * PT_USER_LOGIN_CFG:用户登录各个系统的配置
 */
@Entity
@Table(name = "PT_USER_LOGIN_CFG")
public class PtUserLoginCfg implements Serializable {

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
	 * 系统编号:系统编号
	 */
	private String systemId;

	/**
	 * 系统简称:系统简称
	 */
	private String sysSimpleName;

	/**
	 * 系统名称:系统名称
	 */
	private String sysName;

	/**
	 * 系统地址:系统地址
	 */
	private String sysUrl;

	/**
	 * 用户名:用户名
	 */
	private String userName;

	/**
	 * 密码:密码
	 */
	private String password;

	/**
	 * 参数:参数
	 */
	private String parameter;

	public PtUserLoginCfg() {
		super();
	}

	public PtUserLoginCfg(String id, String roleName, String systemId,
			String sysSimpleName, String sysName, String sysUrl,
			String userName, String password, String parameter) {
		super();
		this.id = id;
		this.roleName = roleName;
		this.systemId = systemId;
		this.sysSimpleName = sysSimpleName;
		this.sysName = sysName;
		this.sysUrl = sysUrl;
		this.userName = userName;
		this.password = password;
		this.parameter = parameter;
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

	public void setSystemId(String systemId) {
		this.systemId = systemId;
	}

	@Column(name = "SYSTEM_ID", length = 50)
	public String getSystemId() {
		return systemId;
	}

	public void setSysSimpleName(String sysSimpleName) {
		this.sysSimpleName = sysSimpleName;
	}

	@Column(name = "SYS_SIMPLE_NAME", length = 50)
	public String getSysSimpleName() {
		return sysSimpleName;
	}

	public void setSysName(String sysName) {
		this.sysName = sysName;
	}

	@Column(name = "SYS_NAME", length = 50)
	public String getSysName() {
		return sysName;
	}

	public void setSysUrl(String sysUrl) {
		this.sysUrl = sysUrl;
	}

	@Column(name = "SYS_URL", length = 500)
	public String getSysUrl() {
		return sysUrl;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "USER_NAME", length = 50)
	public String getUserName() {
		return userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "PASSWORD", length = 50)
	public String getPassword() {
		return password;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	@Column(name = "PARAMETER", length = 500)
	public String getParameter() {
		return parameter;
	}

	public String toString() {
		return "PtUserLoginCfg [id=" + id + ",roleName=" + roleName
				+ ",systemId=" + systemId + ",sysSimpleName=" + sysSimpleName
				+ ",sysName=" + sysName + ",sysUrl=" + sysUrl + ",userName="
				+ userName + ",password=" + password + ",parameter="
				+ parameter + "]";
	}

}
