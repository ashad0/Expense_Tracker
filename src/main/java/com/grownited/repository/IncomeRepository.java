package com.grownited.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.IncomeEntity;

@Repository
public interface IncomeRepository extends JpaRepository<IncomeEntity, Integer>{

	
	@Query(value = "select i.* , u.first_name , u.last_name from user u , income i where i.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
    
    @Query(value = "select i.*, u.title , u.status , u.amount , u.transactionDate , u.description from user u, income i where i.userid = u.userid and i.incomeid = :incomeId", nativeQuery = true)
    List<Object[]> getByincomeId(@Param("incomeId") Integer incomeId);

    
}
