package cn.com.oking.pt.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * PT_SYS_LINK:系统平台的地址
 */
@Entity
@Table(name = "PT_SYS_LINK")
public class PtSysLink implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键:主键
	 */
	private String id;

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
	private String sysAddress;

	/**
	 * 图片路径:图片路径
	 */
	private String imgUrl;

	/**
	 * 用户名:用户名
	 */
	private String userName;

	/**
	 * 密码:密码
	 */
	private String userPwd;

	/**
	 * 参数1:参数1
	 */
	private String param1;

	/**
	 * 参数2:参数2
	 */
	private String param2;

	/**
	 * 是否登录:是否登录
	 */
	private String isSignIn;

	/**
	 * 图标路径:图标路径
	 */
	private String iconUrl;

	public PtSysLink() {
		super();
	}

	public PtSysLink(String id, String sysSimpleName, String sysName,
			String sysAddress, String imgUrl, String userName, String userPwd,
			String param1, String param2, String isSignIn, String iconUrl) {
		super();
		this.id = id;
		this.sysSimpleName = sysSimpleName;
		this.sysName = sysName;
		this.sysAddress = sysAddress;
		this.imgUrl = imgUrl;
		this.userName = userName;
		this.userPwd = userPwd;
		this.param1 = param1;
		this.param2 = param2;
		this.isSignIn = isSignIn;
		this.iconUrl = iconUrl;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Id
	@Column(name = "ID", length = 50, nullable = false)
	public String getId() {
		return id;
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

	public void setSysAddress(String sysAddress) {
		this.sysAddress = sysAddress;
	}

	@Column(name = "SYS_ADDRESS", length = 500)
	public String getSysAddress() {
		return sysAddress;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	@Column(name = "IMG_URL", length = 500)
	public String getImgUrl() {
		return imgUrl;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "USER_NAME", length = 50)
	public String getUserName() {
		return userName;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	@Column(name = "USER_PWD", length = 50)
	public String getUserPwd() {
		return userPwd;
	}

	public void setParam1(String param1) {
		this.param1 = param1;
	}

	@Column(name = "PARAM1", length = 50)
	public String getParam1() {
		return param1;
	}

	public void setParam2(String param2) {
		this.param2 = param2;
	}

	@Column(name = "PARAM2", length = 50)
	public String getParam2() {
		return param2;
	}

	public void setIsSignIn(String isSignIn) {
		this.isSignIn = isSignIn;
	}

	@Column(name = "IS_SIGN_IN", length = 50)
	public String getIsSignIn() {
		return isSignIn;
	}

	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}

	@Column(name = "ICON_URL", length = 500)
	public String getIconUrl() {
		return iconUrl;
	}

	public String toString() {
		return "PtSysLink [id=" + id + ",sysSimpleName=" + sysSimpleName
				+ ",sysName=" + sysName + ",sysAddress=" + sysAddress
				+ ",imgUrl=" + imgUrl + ",userName=" + userName + ",userPwd="
				+ userPwd + ",param1=" + param1 + ",param2=" + param2
				+ ",isSignIn=" + isSignIn + ",iconUrl=" + iconUrl + "]";
	}

}
