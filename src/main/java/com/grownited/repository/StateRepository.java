package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.grownited.entity.stateEntity;

@Repository
public interface StateRepository extends JpaRepository<stateEntity, Integer> {
}
