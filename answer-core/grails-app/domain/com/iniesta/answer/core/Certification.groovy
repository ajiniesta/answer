package com.iniesta.answer.core

class Certification {

	String name
	String description

    static constraints = {
    	name unique:true
    }
}
