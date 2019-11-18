package UserManagement.Entities;

import java.util.Date;

public class Retailer {
	private String userId;
	private String name;
	private String contact1;
	private String contact2;
	private String address;
	private String address2;
	private int zipcode;
	private String city;
	private String state;
	private int maxSetTopBox;
	private float creditLimit;
	private float commissionPercent;
	private float serviceCharge;
	private String InventoryId;
	private Date creationDate;
	private float totalInventoryCost;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact1() {
		return contact1;
	}
	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}
	public String getContact2() {
		return contact2;
	}
	public void setContact2(String contact2) {
		this.contact2 = contact2;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getMaxSetTopBox() {
		return maxSetTopBox;
	}
	public void setMaxSetTopBox(int maxSetTopBox) {
		this.maxSetTopBox = maxSetTopBox;
	}
	public float getCreditLimit() {
		return creditLimit;
	}
	public void setCreditLimit(float creditLimit) {
		this.creditLimit = creditLimit;
	}
	public float getCommissionPercent() {
		return commissionPercent;
	}
	public void setCommissionPercent(float commissionPercent) {
		this.commissionPercent = commissionPercent;
	}
	public float getServiceCharge() {
		return serviceCharge;
	}
	public void setServiceCharge(float serviceCharge) {
		this.serviceCharge = serviceCharge;
	}
	public String getInventoryId() {
		return InventoryId;
	}
	public void setInventoryId(String inventoryId) {
		InventoryId = inventoryId;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public float getTotalInventoryCost() {
		return totalInventoryCost;
	}
	public void setTotalInventoryCost(float totalInventoryCost) {
		this.totalInventoryCost = totalInventoryCost;
	}
}
