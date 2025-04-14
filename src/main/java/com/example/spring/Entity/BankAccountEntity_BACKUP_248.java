package com.example.spring.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
<<<<<<< HEAD
=======
@Entity
@Table(name="Bankacconut_Details")
public class BankAccountEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="bank_account_id")
	private Long bankAccountId;
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

	public Long getBankAccountId() {
		return bankAccountId;
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
	
	
	
>>>>>>> d9d97a79ce8ee72f32d1b4319f74a8545a22ba75

@Entity
	@Table(name = "bank_accounts")
	public class BankAccountEntity 
	{
	        @Id
		    @GeneratedValue(strategy = GenerationType.IDENTITY)
		    @Column(name = "bank_account_id")
		    private Integer bankAccountId;

		    @ManyToOne
		    @JoinColumn(name = "user_Id", referencedColumnName = "user_Id")
		    private UserDetailsEntity user;

		    @Column(name = "account_number", nullable = false)
		    private String accountNumber;

		    @Column(name = "ifsc_code")
		    private String ifscCode;

		    @Column(name = "bank_name")
		    private String bankName;

		    @Column(name = "branch_location")
		    private String branchLocation;

		    @Column(name = "is_active")
		    private String isActive;
		    
		    @Column(name = "balance")
		    private double balance;

			public Integer getBankAccountId() {
				return bankAccountId;
			}

			public void setBankAccountId(Integer bankAccountId) {
				this.bankAccountId = bankAccountId;
			}

			public UserDetailsEntity getUser() {
				return user;
			}

			public void setUser(UserDetailsEntity user) {
				this.user = user;
			}

			public String getAccountNumber() {
				return accountNumber;
			}

			public void setAccountNumber(String accountNumber) {
				this.accountNumber = accountNumber;
			}

			public String getIfscCode() {
				return ifscCode;
			}

			public void setIfscCode(String ifscCode) {
				this.ifscCode = ifscCode;
			}

			public String getBankName() {
				return bankName;
			}

			public void setBankName(String bankName) {
				this.bankName = bankName;
			}

			public String getBranchLocation() {
				return branchLocation;
			}

			public void setBranchLocation(String branchLocation) {
				this.branchLocation = branchLocation;
			}

			public String getIsActive() {
				return isActive;
			}

			public void setIsActive(String isActive) {
				this.isActive = isActive;
			}

			public double getBalance() {
				return balance;
			}

			public void setBalance(double balance) {
				this.balance = balance;
			}
		    


	}

