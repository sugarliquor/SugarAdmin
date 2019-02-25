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
 * 出货表
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
@Entity
@Table(name = "tb_stock")
public class Stock extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7757484812512596225L;

	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;

	/**
	 * 到库时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date arrivaTime;

	/**
	 * 进货厂家
	 */
	private String incomManu;

	/**
	 * 名称及规格
	 */
	private String nameSpeci;

	/**
	 * 批号
	 */
	private String batchNumber;

	/**
	 * 总数量
	 */
	private String totalQuantity;

	/**
	 * 库存数量
	 */
	private String inventoryQuantity;

	/**
	 * 出货数量
	 */
	private String shippQuantity;

	/**
	 * 出货地址
	 */
	private String shippAddress;

	/**
	 * 用货人
	 */
	private String shipper;

	/**
	 * 出货时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date shippTime;
	
	/**
	 * 退回数量
	 */
	private String returnQuantity;
	
	/**
	 * 备注
	 */
	private String remarks;

	/**
	 * 更新时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date updateTime;
	
	/**
	 * 删除标识
	 */
	private Integer yn;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getArrivaTime() {
		return arrivaTime;
	}

	public void setArrivaTime(Date arrivaTime) {
		this.arrivaTime = arrivaTime;
	}

	public String getIncomManu() {
		return incomManu;
	}

	public void setIncomManu(String incomManu) {
		this.incomManu = incomManu;
	}

	public String getNameSpeci() {
		return nameSpeci;
	}

	public void setNameSpeci(String nameSpeci) {
		this.nameSpeci = nameSpeci;
	}

	public String getBatchNumber() {
		return batchNumber;
	}

	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}

	public String getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(String totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

	public String getInventoryQuantity() {
		return inventoryQuantity;
	}

	public void setInventoryQuantity(String inventoryQuantity) {
		this.inventoryQuantity = inventoryQuantity;
	}

	public String getShippQuantity() {
		return shippQuantity;
	}

	public void setShippQuantity(String shippQuantity) {
		this.shippQuantity = shippQuantity;
	}

	public String getShippAddress() {
		return shippAddress;
	}

	public void setShippAddress(String shippAddress) {
		this.shippAddress = shippAddress;
	}

	public String getShipper() {
		return shipper;
	}

	public void setShipper(String shipper) {
		this.shipper = shipper;
	}

	public Date getShippTime() {
		return shippTime;
	}

	public void setShippTime(Date shippTime) {
		this.shippTime = shippTime;
	}

	public String getReturnQuantity() {
		return returnQuantity;
	}

	public void setReturnQuantity(String returnQuantity) {
		this.returnQuantity = returnQuantity;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getYn() {
		return yn;
	}

	public void setYn(Integer yn) {
		this.yn = yn;
	}

}
