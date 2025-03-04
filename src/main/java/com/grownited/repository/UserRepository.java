package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.userentity;


@Repository
public interface UserRepository extends JpaRepository<userentity, Integer>{

	Optional<userentity> findByEmail(String email);
}
