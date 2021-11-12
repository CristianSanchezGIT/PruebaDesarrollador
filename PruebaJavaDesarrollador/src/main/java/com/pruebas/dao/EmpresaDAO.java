package com.pruebas.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.pruebas.entity.EmpresaEntity;

public interface EmpresaDAO extends JpaRepository<EmpresaEntity, Long> {

}
