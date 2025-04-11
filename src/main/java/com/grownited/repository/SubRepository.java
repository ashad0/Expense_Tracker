package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SubEntity;

@Repository
public interface SubRepository extends JpaRepository<SubEntity, Integer>{

	@Query(value = "select s.* , u.first_name , u.last_name from user u , sub s where s.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
    
    @Query(value = "select s.*, u.title from user u, vendor s where s.userid = u.userid and s.subid = :subId", nativeQuery = true)
    List<Object[]> getBysubId(@Param("subId") Integer subId);

}
