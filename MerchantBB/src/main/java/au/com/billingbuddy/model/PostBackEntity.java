package au.com.billingbuddy.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table (name="PostBack")
public class PostBackEntity implements Serializable {

	private static final long serialVersionUID = -3833357625540437743L;

	@Id
	@GeneratedValue
	@Column(name = "PB_ID")
	private int id;

	@NotEmpty
	@NotNull
	@Column(name = "PB_TransID")
	private String transId;
	
	@Column(name = "PB_TransRef")
	private String transRef;
	
	@Column(name = "PB_Amount")
	private String amount;
	
	@Column(name = "PB_Currency")	
	private String currency;
	
	@Column(name = "PB_Status")
	private String status;
	
	@Column(name = "PB_Message")
	private String message;
	
	@Column(name = "PB_Email")
	private String email;
	
	@Column(name = "PB_Key")
	private String key;
	
	@Column(name = "PB_Test")
	private String test;
	
	@Column(name = "PB_RebillId")
	private String rebillId;
	
	@Column(name = "PB_Fail")
	private String fail;

	public int getId() {
		return id;
	}

	public String getTransId() {
		return transId;
	}

	public String getTransRef() {
		return transRef;
	}

	public String getAmount() {
		return amount;
	}

	public String getCurrency() {
		return currency;
	}

	public String getStatus() {
		return status;
	}

	public String getMessage() {
		return message;
	}

	public String getEmail() {
		return email;
	}

	public String getKey() {
		return key;
	}

	public String getTest() {
		return test;
	}

	public String getRebillId() {
		return rebillId;
	}

	public String getFail() {
		return fail;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTransId(String transId) {
		this.transId = transId;
	}

	public void setTransRef(String transRef) {
		this.transRef = transRef;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public void setRebillId(String rebillId) {
		this.rebillId = rebillId;
	}

	public void setFail(String fail) {
		this.fail = fail;
	}

	@Override
	public String toString() {
		return "PostBack [id=" + id + ",transId=" + transId + ",transRef=" + transRef + ", amount=" + amount
				+ ", currency=" + currency + ", status=" + status + ", message=" + message + ", email=" + email
				+ ", key=" + key + ", test=" + test + ", rebillId=" + rebillId + ", fail=" + fail + "]";
	}

}
