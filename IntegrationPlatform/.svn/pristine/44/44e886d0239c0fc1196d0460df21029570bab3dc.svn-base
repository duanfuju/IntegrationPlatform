package cn.com.oking.pt.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * BDF2_ROLE_MEMBER:
 */
@Entity
@Table(name = "BDF2_ROLE_MEMBER")
public class Bdf2RoleMember implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * ID_:
	 */
	private String id;

	/**
	 * CREATE_DATE_:
	 */
	private Date createDate;

	/**
	 * DEPT_ID_:
	 */
	private String deptId;

	/**
	 * GRANTED_:
	 */
	private BigDecimal granted;

	/**
	 * POSITION_ID_:
	 */
	private String positionId;

	/**
	 * ROLE_ID_:
	 */
	private String roleId;

	/**
	 * USERNAME_:
	 */
	private String username;

	public Bdf2RoleMember() {
		super();
	}

	public Bdf2RoleMember(String id, Date createDate, String deptId,
			BigDecimal granted, String positionId, String roleId,
			String username) {
		super();
		this.id = id;
		this.createDate = createDate;
		this.deptId = deptId;
		this.granted = granted;
		this.positionId = positionId;
		this.roleId = roleId;
		this.username = username;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Id
	@Column(name = "ID_", length = 60, nullable = false)
	public String getId() {
		return id;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE_")
	public Date getCreateDate() {
		return createDate;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	@Column(name = "DEPT_ID_", length = 60)
	public String getDeptId() {
		return deptId;
	}

	public void setGranted(BigDecimal granted) {
		this.granted = granted;
	}

	@Column(name = "GRANTED_")
	public BigDecimal getGranted() {
		return granted;
	}

	public void setPositionId(String positionId) {
		this.positionId = positionId;
	}

	@Column(name = "POSITION_ID_", length = 60)
	public String getPositionId() {
		return positionId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@Column(name = "ROLE_ID_", length = 60)
	public String getRoleId() {
		return roleId;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "USERNAME_", length = 60)
	public String getUsername() {
		return username;
	}

	public String toString() {
		return "Bdf2RoleMember [id=" + id + ",createDate=" + createDate
				+ ",deptId=" + deptId + ",granted=" + granted + ",positionId="
				+ positionId + ",roleId=" + roleId + ",username=" + username
				+ "]";
	}

}
