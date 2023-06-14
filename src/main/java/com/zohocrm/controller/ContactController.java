package com.zohocrm.controller;

import java.util.List;

import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Billing;
import com.zohocrm.entities.Contact;
import com.zohocrm.service.BillingService;
import com.zohocrm.service.ContactService;

@Controller
public class ContactController {
	@Autowired
	private BillingService billingService;

	@Autowired
	private ContactService contactService;

	@RequestMapping("/listcontacts")
	public String listContacts(Model model) {
		List<Contact> contacts = contactService.getContact();
		model.addAttribute("contacts", contacts);
		return "list_contacts";
	}

	@RequestMapping("/contactInfo")
	public String contactInfo(@RequestParam("id") long id, Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "contact_info";

	}
	@RequestMapping("/createBill")
	public String createBill(@RequestParam("id") long id,Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
		
	}
	@RequestMapping("/saveBill")
	public String saveBill(@ModelAttribute("bill")Billing bill,Model model) {
		billingService.generateBill(bill);
		model.addAttribute("bill", bill);
		return"bill_info";
	}
	
}
