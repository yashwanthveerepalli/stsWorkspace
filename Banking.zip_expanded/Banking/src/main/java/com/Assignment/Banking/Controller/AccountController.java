package com.Assignment.Banking.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Assignment.Banking.Service.AccountService;
import com.Assignment.Banking.domain.Account;

@Controller
public class AccountController {

	@Autowired
	private AccountService service;
	
	@GetMapping("/")
	public String viewHomePage(Model model) {
        List<Account> listaccount = service.listall();
        model.addAttribute("listaccount", listaccount);
        System.out.print("Get / "); 
        return "index1";
    }
	@GetMapping("/index")
	public String viewHomePage2(Model model) {
        List<Account> listaccount = service.listall();
        model.addAttribute("listaccount", listaccount);
        System.out.print("Get / "); 
        return "index";
    }
	@GetMapping("/new")
    public String addAccount(Model model) {
        model.addAttribute("account", new Account());
        return "new";
    }
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveAccount(@ModelAttribute("account") Account std) {
        service.save(std);
        return "redirect:/";
    }
	 @RequestMapping("/update/{id}")
     public ModelAndView showEditStudentPage(@PathVariable(name = "id") int id) {
         ModelAndView mav = new ModelAndView("new");
         Account std = service.get(id);
         mav.addObject("account", std);
         return mav;
         
     }
	 @RequestMapping("/delete/{Aid}")
     public String deletestudent(@PathVariable(name = "Aid") int Aid) {
         service.delete(Aid);
         return "redirect:/";
     }
	
	
}
