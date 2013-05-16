package com.mant.dao;

import java.util.List;
import com.mant.model.Telefono;

public interface TelefonoDAO {

	public int addTelefono(Telefono telefono);

	public void updateTelefono(Telefono telefono);

	public Telefono getTelefono(int id);

	public void deleteTelefono(int id);

	public List<Telefono> getTelefonos();

}
