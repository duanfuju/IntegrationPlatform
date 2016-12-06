package cn.com.oking.pt.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;

/**
 * PT_USER_CFG:系统平台用户配置
 */
@Entity
@Table(name = "PT_USER_CFG")
public class PtUserCfg implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键:主键
	 */
	private String id;

	/**
	 * 用户名:用户名
	 */
	private String userName;

	/**
	 * 类型:类型
	 */
	private String type;

	/**
	 * 序号:序号
	 */
	private BigDecimal serialNumber;

	/**
	 * 系统平台的地址的外键:系统平台的地址的外键
	 */
	private String ptSysLinkId;

	public PtUserCfg() {
		super();
	}

	public PtUserCfg(String id, String userName, String type,
			BigDecimal serialNumber, String ptSysLinkId) {
		super();
		this.id = id;
		this.userName = userName;
		this.type = type;
		this.serialNumber = serialNumber;
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

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "USER_NAME", length = 50)
	public String getUserName() {
		return userName;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "TYPE", length = 50)
	public String getType() {
		return type;
	}

	public void setSerialNumber(BigDecimal serialNumber) {
		this.serialNumber = serialNumber;
	}

	@Column(name = "SERIAL_NUMBER")
	public BigDecimal getSerialNumber() {
		return serialNumber;
	}

	public void setPtSysLinkId(String ptSysLinkId) {
		this.ptSysLinkId = ptSysLinkId;
	}

	@Column(name = "PT_SYS_LINK_ID", length = 50)
	public String getPtSysLinkId() {
		return ptSysLinkId;
	}

	public String toString() {
		return "PtUserCfg [id=" + id + ",userName=" + userName + ",type="
				+ type + ",serialNumber=" + serialNumber + ",ptSysLinkId="
				+ ptSysLinkId + "]";
	}

}
