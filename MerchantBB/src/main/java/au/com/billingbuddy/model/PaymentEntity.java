package au.com.billingbuddy.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

//@Entity
public class PaymentEntity implements Serializable {

	private static final long serialVersionUID = -3816554403674201936L;
	
	@Id
	@GeneratedValue
	private int id;
	
	@NotEmpty
	private String merchant;
	
	@NotEmpty
	private String site;
	
	private String schedule;
	
	@NotEmpty
	private String amount;
	
	@NotEmpty
	private String currency;
	
	@NotEmpty
	private String transactionReference;
	
	@NotEmpty
	private String product;
	
	@NotEmpty
	private String paymentType;
	
	@NotEmpty
	private String AttemptMode;
	
	@NotEmpty
	private String TestTrans;
	
	private CustomerEntity customerEntity;

	public String getMerchant() {
		return merchant;
	}

	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getTransactionReference() {
		return transactionReference;
	}

	public void setTransactionReference(String transactionReference) {
		this.transactionReference = transactionReference;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public String getAttemptMode() {
		return AttemptMode;
	}

	public void setAttemptMode(String attemptMode) {
		AttemptMode = attemptMode;
	}

	public String getTestTrans() {
		return TestTrans;
	}

	public void setTestTrans(String testTrans) {
		TestTrans = testTrans;
	}

	public CustomerEntity getCustomerEntity() {
		return customerEntity;
	}

	public void setCustomerEntity(CustomerEntity customerEntity) {
		this.customerEntity = customerEntity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
