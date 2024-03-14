package com.example.demo.repositories.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Request;
import java.util.Optional;

import com.example.demo.models.User;

@Repository
public interface RequestRepository extends JpaRepository<Request, Long> {
    Optional<Request> findByIdAndUser(Long id, User user);
}
