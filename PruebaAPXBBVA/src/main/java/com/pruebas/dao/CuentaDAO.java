package com.pruebas.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pruebas.entity.CuentaEntity;

public interface CuentaDAO extends JpaRepository<CuentaEntity, Long>{

}
