package com.Assignment.Banking.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Aid;
	private String accname;
	private String type;
	private String addr;
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(Long aid, String accname, String type, String addr) {
		super();
		Aid = aid;
		this.accname = accname;
		this.type = type;
		this.addr = addr;
	}

	public Long getAid() {
		return Aid;
	}

	public void setAid(Long aid) {
		Aid = aid;
	}

	public String getAccname() {
		return accname;
	}

	public void setAccname(String accname) {
		this.accname = accname;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}