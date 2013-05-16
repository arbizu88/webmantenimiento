package com.mant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mant.model.Telefono;
import com.mant.service.TelefonoService;

@Controller
@RequestMapping(value = "/telefono")
public class TelefonoController {

	@Autowired
	private TelefonoService telefonoService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addTeamPage(Model model) {

		model.addAttribute("telefono", new Telefono());
		return "add-telefono-form";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addingTelefono(@ModelAttribute("telefono") Telefono telefono,
			Model model) {
		int id = telefonoService.addTelefono(telefono);
		String message = "Telefono fue agregado satisfactoriamente.";

		if (id == 0) {
			message = "No se almaceno la información";
		}
		model.addAttribute("message", message);

		return "home";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listOfTelefonos(Model model) {

		List<Telefono> telefonos = telefonoService.getTelefonos();
		model.addAttribute("telefonos", telefonos);

		return "list-of-telefonos";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editTelefonoPage(@PathVariable Integer id, Model model) {

		Telefono telefono = telefonoService.getTelefono(id);
		model.addAttribute("telefono", telefono);
		return "edit-telefono-form";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String edditingTelefono(@ModelAttribute Telefono telefono,
			@PathVariable Integer id) {

		telefono.setIdtelefono(id);
		telefonoService.updateTelefono(telefono);

		return "home";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteTelefono(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		telefonoService.deleteTelefono(id);
		String message = "Telefono fue eliminado con exito!.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
