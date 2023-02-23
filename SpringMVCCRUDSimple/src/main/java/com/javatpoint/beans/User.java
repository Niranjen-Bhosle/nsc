package com.javatpoint.beans;  
  
public class User{  
  
	private String clientname;
	private String contactperson;
	private String phoneno ;
	private String street1;
	private String state;
	private String zipcode;
	private String website;
	private String emailid;
	private String mobileno;
	private String street2;
	private String country;
	public String getClientname() {
		return clientname;
	}
	public void setClientname(String clientname) {
		this.clientname = clientname;
	}
	public String getContactperson() {
		return contactperson;
	}
	public void setContactperson(String contactperson) {
		this.contactperson = contactperson;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getStreet1() {
		return street1;
	}
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getStreet2() {
		return street2;
	}
	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "User [clientname=" + clientname + ", contactperson=" + contactperson + ", phoneno=" + phoneno
				+ ", street1=" + street1 + ", state=" + state + ", zipcode=" + zipcode + ", website=" + website
				+ ", emailid=" + emailid + ", mobileno=" + mobileno + ", street2=" + street2 + ", country=" + country
				+ "]";
	}
	
	
	

	
  

}  