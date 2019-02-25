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
@Table(name = "tb_pur_stock")
public class PurStock extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2068802867439546201L;

	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;

	/**
	 * 进货时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date purchasTime;
	
	/**
	 * 出货时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date shippTime;
	
	/**
	 * 打款时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date paymentTime;
	
	/**
	 * 到货时间
	 */
	@JSONField(format = "yyyy-MM-dd")
	private Date arrivalTime;
	
	/**
	 * 订货人
	 */
	private String shipper;

	/**
	 * 进货厂家
	 */
	private String incomManu;

	/**
	 * 联系电话
	 */
	private String contactNumber;

	/**
	 * 联系人
	 */
	private String contacts;
	
	/**
	 * 物流电话
	 */
	private String logisNumber;
	
	/**
	 * 进货名称及规格
	 */
	private String nameSpeci;

	/**
	 * 进货数量
	 */
	private String purQuantity;

	/**
	 * 单价
	 */
	private String unitPrice;

	/**
	 * 总计
	 */
	private String total;

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

	public Date getPurchasTime() {
		return purchasTime;
	}

	public void setPurchasTime(Date purchasTime) {
		this.purchasTime = purchasTime;
	}

	public Date getShippTime() {
		return shippTime;
	}

	public void setShippTime(Date shippTime) {
		this.shippTime = shippTime;
	}

	public Date getPaymentTime() {
		return paymentTime;
	}

	public void setPaymentTime(Date paymentTime) {
		this.paymentTime = paymentTime;
	}

	public Date getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(Date arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public String getShipper() {
		return shipper;
	}

	public void setShipper(String shipper) {
		this.shipper = shipper;
	}

	public String getIncomManu() {
		return incomManu;
	}

	public void setIncomManu(String incomManu) {
		this.incomManu = incomManu;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getLogisNumber() {
		return logisNumber;
	}

	public void setLogisNumber(String logisNumber) {
		this.logisNumber = logisNumber;
	}

	public String getNameSpeci() {
		return nameSpeci;
	}

	public void setNameSpeci(String nameSpeci) {
		this.nameSpeci = nameSpeci;
	}

	public String getPurQuantity() {
		return purQuantity;
	}

	public void setPurQuantity(String purQuantity) {
		this.purQuantity = purQuantity;
	}

	public String getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
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
