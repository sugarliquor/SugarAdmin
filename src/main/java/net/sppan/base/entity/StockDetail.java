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
 * 出货明细表
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
@Entity
@Table(name = "tb_stock_detail")
public class StockDetail extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7071559228272441553L;

	/**
	 * id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;
	
	/**
	 * 存货表id
	 */
	private Integer pId;

	/**
	 * 出货数量
	 */
	private int shippQuantity;

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
	private int returnQuantity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public int getShippQuantity() {
		return shippQuantity;
	}

	public void setShippQuantity(int shippQuantity) {
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

	public int getReturnQuantity() {
		return returnQuantity;
	}

	public void setReturnQuantity(int returnQuantity) {
		this.returnQuantity = returnQuantity;
	}

}
