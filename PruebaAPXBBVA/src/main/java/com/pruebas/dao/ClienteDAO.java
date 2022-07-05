package com.pruebas.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.pruebas.entity.ClienteEntity;

public interface ClienteDAO extends JpaRepository<ClienteEntity, Long> {

}
