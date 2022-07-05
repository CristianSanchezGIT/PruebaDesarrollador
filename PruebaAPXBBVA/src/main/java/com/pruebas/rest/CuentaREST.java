package com.pruebas.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pruebas.dao.ClienteDAO;
import com.pruebas.dao.CuentaDAO;
import com.pruebas.entity.ClienteEntity;
import com.pruebas.entity.CuentaEntity;

@RestController
@RequestMapping("/")
public class CuentaREST {
	
	
	@Autowired
	private CuentaDAO cuentaDAO;
	
	@Autowired
	private ClienteDAO clienteDAO;

	@RequestMapping("/ConsultaCuenta")
	@GetMapping
	public ResponseEntity<List<CuentaEntity>> ConsultarCuenta(){
		List<CuentaEntity> cuenta = cuentaDAO.findAll();
		return ResponseEntity.ok(cuenta);
	}
	
	@RequestMapping("/CreaCuenta")
	@PostMapping
	public  ResponseEntity<CuentaEntity> CrearCuenta(@RequestBody CuentaEntity cuenta ){
		CuentaEntity NewCuenta = cuentaDAO.save(cuenta);
		return ResponseEntity.ok(NewCuenta);
	}
	
	@RequestMapping("/ActualizaCuenta")
	@PostMapping
	public  ResponseEntity<CuentaEntity> ActualizaCuenta(@RequestBody CuentaEntity cuenta ){
		CuentaEntity NewCuenta = cuentaDAO.saveAndFlush(cuenta);
		return ResponseEntity.ok(NewCuenta);
	}
	
	@RequestMapping("/EliminaCuenta")
	@PostMapping
	public  ResponseEntity<CuentaEntity> EliminaCuenta(@RequestBody CuentaEntity cuenta ){
		cuentaDAO.delete(cuenta);
		return ResponseEntity.ok(cuenta);
	}
}
