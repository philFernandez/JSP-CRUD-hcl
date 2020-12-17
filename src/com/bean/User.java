package com.bean;

public class User {
private int id;
private String name,password,email,sex,country,dept;
private double income;
public int getId() {
	return id;
}
public User() {}
public User(int id, String name, String password, String email, String sex, String country, String dept,
		double income) {
	super();
	this.id = id;
	this.name = name;
	this.password = password;
	this.email = email;
	this.sex = sex;
	this.country = country;
	this.dept = dept;
	this.income = income;
}
public String getDept() {
	return dept;
}
public void setDept(String dept) {
	this.dept = dept;
}
public double getIncome() {
	return income;
}
public void setIncome(double income) {
	this.income = income;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}

}
