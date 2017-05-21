package com.company

import javax.swing.SpringLayout.Constraints;

class Company {
	String name
	
	static hasMany = [employees: Employee]
	
	static constraints = {
		name nullable: false 
	}
}
