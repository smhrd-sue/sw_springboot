package com.lgdx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgdx.entity.Member;
import com.lgdx.repository.MemberRepository;

@Service
public class MemberService {

	@Autowired
	private MemberRepository repository;
	
	public void join(Member vo) {
		repository.save(vo);
	}

	public Member login(Member vo) {
		String id = vo.getId();
		String pw = vo.getPw();
		return repository.findByIdAndPw(id, pw);
	}

}








