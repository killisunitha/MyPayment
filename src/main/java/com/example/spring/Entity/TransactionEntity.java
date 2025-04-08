package com.example.spring.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="txn_details")
public class TransactionEntity {
	@Id
	 @Column(name="txn-id")
	private long txnId;
	@Column(name="txn-date")
	private String txnDate;
	@Column(name="txn-amount")
	private double txnAmount;
	
}
