package net.sppan.base.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.annotation.JSONField;

import net.sppan.base.entity.support.BaseEntity;

/**
 * <p>
 * 开单表
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
@Entity
@Table(name = "tb_order")
public class Order extends BaseEntity {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1608265253360877067L;

	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;

	/**
	 * 编号
	 */
	private String orderNo;

	/**
	 * 地址
	 */
	private String address;

	/**
	 * 联系电话
	 */
	private String contactNumber;

	/**
	 * 介绍人
	 */
	private String introducer;

	/**
	 * 安装工
	 */
	private String installer;

	/**
	 * 安装时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date installationTime;

	/**
	 * 定金
	 */
	private String frontMoney;

	/**
	 * 总计
	 */
	private String total;

	/**
	 * 制单人
	 */
	private String singlePerson;

	/**
	 * 制单时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date singleTime;

	/**
	 * 更新时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date updateTime;
	
	/**
	 * 删除标识
	 */
	private Integer yn;
	
	public Integer getYn() {
		return yn;
	}

	public void setYn(Integer yn) {
		this.yn = yn;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIntroducer() {
		return introducer;
	}

	public void setIntroducer(String introducer) {
		this.introducer = introducer;
	}

	public String getInstaller() {
		return installer;
	}

	public void setInstaller(String installer) {
		this.installer = installer;
	}

	public Date getInstallationTime() {
		return installationTime;
	}

	public void setInstallationTime(Date installationTime) {
		this.installationTime = installationTime;
	}

	public String getSinglePerson() {
		return singlePerson;
	}

	public void setSinglePerson(String singlePerson) {
		this.singlePerson = singlePerson;
	}

	public Date getSingleTime() {
		return singleTime;
	}

	public void setSingleTime(Date singleTime) {
		this.singleTime = singleTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getFrontMoney() {
		return frontMoney;
	}

	public void setFrontMoney(String frontMoney) {
		this.frontMoney = frontMoney;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

}
