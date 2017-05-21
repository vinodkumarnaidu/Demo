package com.company

class Employee {
	String name
	Company companyName
	int salary
	String designation
	
	static belongsTo = [companyName: Company]
	static constraints = {
		name nullable:false
		companyName  blank: false , unique:false
		salary nullable:false 
		designation blank:false 
		
	}
}
