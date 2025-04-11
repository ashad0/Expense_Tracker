package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.userentity;


@Repository
public interface UserRepository extends JpaRepository<userentity, Integer>{

	Optional<userentity> findByEmail(String email);
	
	@Query(value = "select u.* , u.first_name , u.last_name from user u , user u where u.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
   
    @Query(value = "select u.* , u.firstname , u.lastname ,u.email , u.mobilenumber from user u , user u   where  u.userid = u.userid and u.userid = u.userid and u.userid= :userId", nativeQuery = true)
	List<Object[]> getByuserId(Integer userId);
}
