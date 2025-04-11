package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ExpenseEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer> {

	@Query(value = "select e.* , u.first_name , u.last_name from user u , expense e where e.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
    
    @Query(value = "select e.*, u.title , u.status , u.amount , u.transactionDate , u.description from user u, expense e where e.userid = u.userid and e.expenseid = :expenseId", nativeQuery = true)
    List<Object[]> getByexpenseId(@Param("expenseId") Integer expenseId);

}
