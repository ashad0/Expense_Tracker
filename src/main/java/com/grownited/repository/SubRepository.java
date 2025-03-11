package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SubEntity;

@Repository
public interface SubRepository extends JpaRepository<SubEntity, Integer>{

}
