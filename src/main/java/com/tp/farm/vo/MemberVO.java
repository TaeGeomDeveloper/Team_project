package com.tp.farm.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	private String mi_id;
	private String mi_password;
	private String mi_name;
	private String mi_email;
	private String mi_phone;
	private String mi_wireline;
	private String mi_address;
	private String mi_addressDetail;
	private String mi_addressCode;
	private String mi_regidentRegNumber;
	private Timestamp mi_joinDate;

//	public MemberVO() {}
//
//	public MemberVO(String mi_id, String mi_password, String mi_name, String mi_email, String mi_phone, String mi_wireline,
//					String mi_address, String mi_addressDetail, String mi_addressCode, String mi_regidentRegNumber, Timestamp mi_joinDate) {
//		this.mi_id = mi_id;
//		this.mi_password = mi_password;
//		this.mi_name = mi_name;
//		this.mi_email = mi_email;
//		this.mi_phone = mi_phone;
//		this.mi_wireline = mi_wireline;
//		this.mi_address = mi_address;
//		this.mi_addressDetail = mi_addressDetail;
//		this.mi_addressCode = mi_addressCode;
//		this.mi_regidentRegNumber = mi_regidentRegNumber;
//		this.mi_joinDate = mi_joinDate;
//	}
//
//	public String getMi_id() {
//		return mi_id;
//	}
//
//	public void setMi_id(String mi_id) {
//		this.mi_id = mi_id;
//	}
//
//	public String getMi_password() {
//		return mi_password;
//	}
//
//	public void setMi_password(String mi_password) {
//		this.mi_password = mi_password;
//	}
//
//	public String getMi_name() {
//		return mi_name;
//	}
//
//	public void setMi_name(String mi_name) {
//		this.mi_name = mi_name;
//	}
//
//	public String getMi_email() {
//		return mi_email;
//	}
//
//	public void setMi_email(String mi_email) {
//		this.mi_email = mi_email;
//	}
//
//	public String getMi_phone() {
//		return mi_phone;
//	}
//
//	public void setMi_phone(String mi_phone) {
//		this.mi_phone = mi_phone;
//	}
//
//	public String getMi_wireline() {
//		return mi_wireline;
//	}
//
//	public void setMi_wireline(String mi_wireline) {
//		this.mi_wireline = mi_wireline;
//	}
//
//	public String getMi_address() {
//		return mi_address;
//	}
//
//	public void setMi_address(String mi_address) {
//		this.mi_address = mi_address;
//	}
//
//	public String getMi_addressDetail() {
//		return mi_addressDetail;
//	}
//
//	public void setMi_addressDetail(String mi_addressDetail) {
//		this.mi_addressDetail = mi_addressDetail;
//	}
//
//	public String getMi_addressCode() {
//		return mi_addressCode;
//	}
//
//	public void setMi_addressCode(String addressCode) {
//		this.mi_addressCode = addressCode;
//	}
//
//	public String getMi_regidentRegNumber() {
//		return mi_regidentRegNumber;
//	}
//
//	public void setMi_regidentRegNumber(String mi_regidentRegNumber) {
//		this.mi_regidentRegNumber = mi_regidentRegNumber;
//	}
//
//	public Timestamp getMi_joinDate() {
//		return mi_joinDate;
//	}
//
//	public void setMi_joinDate(Timestamp mi_joinDate) {
//		this.mi_joinDate = mi_joinDate;
//	}
}
