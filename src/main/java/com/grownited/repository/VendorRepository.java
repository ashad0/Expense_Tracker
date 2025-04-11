package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.VendorEntity;

@Repository
public interface VendorRepository extends JpaRepository<VendorEntity, Integer>{

	@Query(value = "select v.* , u.first_name , u.last_name from user u , vendor v where v.userid = u.userid",nativeQuery = true)
    List<Object[]> getAll();
    
    @Query(value = "select v.*, u.title from user u, vendor v where v.userid = u.userid and v.vendorid = :vendorId", nativeQuery = true)
    List<Object[]> getByvendorId(@Param("vendorId") Integer vendorId);

}
