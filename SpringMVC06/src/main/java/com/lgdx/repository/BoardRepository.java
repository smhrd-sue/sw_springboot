package com.lgdx.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lgdx.entity.Board;

@Repository
public interface BoardRepository extends JpaRepository<Board, Long>{

	@Transactional
	@Modifying
	@Query("UPDATE Board b SET b.count = b.count + 1 WHERE b.idx = :idx")
	void count(@Param("idx") Long idx);

}


















