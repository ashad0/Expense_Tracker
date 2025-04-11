package com.grownited.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CategoryEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer> {


	@Query(value = "select c.* , u.first_name , u.last_name from user u , category c where c.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
    
    @Query(value = "select c.*, u.title from user u, category c where c.userid = u.userid and c.categoryid = :categoryId", nativeQuery = true)
    List<Object[]> getBycategoryId(@Param("categoryId") Integer categoryId);

}
