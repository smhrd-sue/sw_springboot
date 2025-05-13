package com.lgdx.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Member {

	@Id
	private String id;
	
	private String pw;
	
	private String nick;
	
	private String addr;
	
	
}
