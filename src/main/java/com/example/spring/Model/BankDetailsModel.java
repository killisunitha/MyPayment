package com.example.spring.Model;

public class BankDetailsModel {
	private Long bankAccountId;
	private String bankName;
	private String branchName;
	private String ifscCode;
	private String bankBalance;
private String accountStatus;
public Long getBankAccountId() {
	return bankAccountId;
}
public String getAccountStatus() {
	return accountStatus;
}
public void setAccountStatus(String accountStatus) {
	this.accountStatus = accountStatus;
}
public void setBankAccountId(Long bankAccountId) {
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
}
