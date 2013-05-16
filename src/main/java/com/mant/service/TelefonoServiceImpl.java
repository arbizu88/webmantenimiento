package com.mant.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mant.dao.TelefonoDAO;
import com.mant.model.Telefono;

@Service
@Transactional
public class TelefonoServiceImpl implements TelefonoService {

	@Resource(name = "telefonoDAOImpl")
	private TelefonoDAO telefonoDAO;

	public int addTelefono(Telefono telefono) {
		return telefonoDAO.addTelefono(telefono);
	}

	public void updateTelefono(Telefono telefono) {
		telefonoDAO.updateTelefono(telefono);
	}

	public Telefono getTelefono(int id) {
		return telefonoDAO.getTelefono(id);
	}

	public void deleteTelefono(int id) {
		telefonoDAO.deleteTelefono(id);
	}

	public List<Telefono> getTelefonos() {
		return telefonoDAO.getTelefonos();
	}

}
