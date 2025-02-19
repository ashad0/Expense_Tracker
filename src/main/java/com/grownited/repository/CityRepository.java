package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.cityEntity;

@Repository
public interface CityRepository extends JpaRepository<cityEntity, Integer>{

}
