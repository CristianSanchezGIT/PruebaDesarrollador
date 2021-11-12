package com.pruebas.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pruebas.dao.EmpresaDAO;
import com.pruebas.dao.RepresentanteLegalDAO;
import com.pruebas.entity.EmpresaEntity;
import com.pruebas.entity.RepresentanteLegalEntity;

@RestController
@RequestMapping("/")
public class EmpresaREST {
	
	
	@Autowired
	private RepresentanteLegalDAO representanteLegalDAO;
	
	@Autowired
	private EmpresaDAO empresaDAO;

	@RequestMapping("/Representante")
	@GetMapping
	public ResponseEntity<List<RepresentanteLegalEntity>> ConsultarRepresentanteLegal(){
		List<RepresentanteLegalEntity> representante = representanteLegalDAO.findAll();
		return ResponseEntity.ok(representante);
	}
	
	@RequestMapping("/Empresa")
	@PostMapping
	public  ResponseEntity<EmpresaEntity> CrearEmpresa(@RequestBody EmpresaEntity empresa ){
		EmpresaEntity NewEmpresa = empresaDAO.save(empresa);
		return ResponseEntity.ok(NewEmpresa);
	}
}
