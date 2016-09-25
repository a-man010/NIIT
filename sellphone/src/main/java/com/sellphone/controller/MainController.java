package com.sellphone.controller;

<<<<<<< Updated upstream
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
 
    @RequestMapping(value = {"/","home","/sellphone/","sellphone/"}, method = RequestMethod.GET)
    public String landingpage(Model model) {
       return "landingpage";
    
    }
    
    
       @RequestMapping(value = {"product"}, method = RequestMethod.GET)
       public String searchpage(Model model) {
          return "search";   
    }
       
       @RequestMapping(value = {"signin"}, method = RequestMethod.GET)
       public String signin(Model model) {
          return "login";   
    }
}
=======

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class MainController {

	@RequestMapping("/")
    public String home() {
        return "landingpage";
    }
	
	@RequestMapping("/admin")
    public String adminpage() {
        return "admin";
    }
	
	@RequestMapping("/home")
    public String homepage() {
        return "home";
    }
    
   /* @RequestMapping("/login")
    public String loginpage() {
        return "login";
    }
    */
   /* @RequestMapping("/register")
    public String registerpage() {
        return "register";
    }*/
    
    @RequestMapping("/registersuccess")
    public String registersuccesspage() {
        return "registersuccess";
    }
    
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
            model.addAttribute("error", "Invalid username and password");
        }

        if(logout!=null) {
            model.addAttribute("msg", "You have been logged out successfully.");
        }

        return "login";
    }
    
   /* @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {

        Customer customer = new Customer();
       
        model.addAttribute("customer", customer);

        return "register";

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                       Model model) {

        if (result.hasErrors()) {
            return "register";
        }

        List<Customer> customerList=customerService.getAllCustomers();

        for (int i=0; i< customerList.size(); i++) {
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "register";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "register";
            }
        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);

        return "registersuccess";

    }

*/
}
>>>>>>> Stashed changes
