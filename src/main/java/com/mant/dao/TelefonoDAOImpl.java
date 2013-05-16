package com.mant.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mant.model.Telefono;

@Repository
public class TelefonoDAOImpl implements TelefonoDAO {

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public int addTelefono(Telefono telefono) {
		return ((Integer) getCurrentSession().save(telefono)).intValue();
		
	}

	public void updateTelefono(Telefono telefono) {
		getCurrentSession().update(telefono);

	}

	public Telefono getTelefono(int id) {
		Telefono telefono = (Telefono) getCurrentSession().get(Telefono.class,
				id);
		return telefono;
	}

	public void deleteTelefono(int id) {
		Telefono telefono = getTelefono(id);
		if (telefono != null)
			getCurrentSession().delete(telefono);
	}

	@SuppressWarnings("unchecked")
	public List<Telefono> getTelefonos() {
		return getCurrentSession().createQuery("from Telefono").list();
	}

}
