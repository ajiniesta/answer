package com.iniesta.answer.core

class Question {
	static hasMany = [answers: Answer]

	Certification certification
	String question

    static constraints = {
    }


}
