package com.hta.exception;


public class AlreadyExistingMemberException extends RuntimeException {
	public AlreadyExistingMemberException(String msg){
		super(msg);
	}
}
