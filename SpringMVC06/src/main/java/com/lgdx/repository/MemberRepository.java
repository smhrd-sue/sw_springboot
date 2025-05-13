package com.lgdx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lgdx.entity.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, String>{

	Member findByIdAndPw(String id, String pw);

}
