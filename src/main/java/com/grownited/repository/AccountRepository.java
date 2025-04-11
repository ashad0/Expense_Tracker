package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AccountEntity;


@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, Integer> {
	
	@Query(value = "select a.* , u.first_name , u.last_name from user u , account a where a.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
   
    @Query(value = "select a.* , u.title , u.amount ,h.description from user u , account a   where  a.userid = u.userid and a.accountid = a.accountid and a.accountid= :accountId", nativeQuery = true)
	List<Object[]> getByaccountId(Integer accountId);
}
