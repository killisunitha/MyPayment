package com.example.spring.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
@Entity
@Table(name="Bankacconut_Details")
public class BankAccountEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="bank_account_id")
	private String bankAccountId;
	@Column(name="bank_name")
	private String bankName;
	@Column(name="branch_name")
	private String branchName;
	@Column(name="ifsc_code")
	private String ifscCode;
	@Column(name="bank_Balance")
	private String bankBalance;
	@Column(name="account_status")
	private String accountStatus;
	@ManyToOne
	@JoinColumn(name="user_Id",nullable=false)
	private UserDetailsEntity user;
	public String getBankAccountId() {
		return bankAccountId;
	}
	public void setBankAccountId(String bankAccountId) {
		this.bankAccountId = bankAccountId;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getBankBalance() {
		return bankBalance;
	}
	public void setBankBalance(String bankBalance) {
		this.bankBalance = bankBalance;
	}
	public String getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}
	public UserDetailsEntity getUser() {
		return user;
	}
	public void setUser(UserDetailsEntity user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "BankAccountEntity [bankAccountId=" + bankAccountId + ", bankName=" + bankName + ", branchName="
				+ branchName + ", ifscCode=" + ifscCode + ", bankBalance=" + bankBalance + ", accountStatus="
				+ accountStatus + ", user=" + user + "]";
	}
	
	
	

}
