package com.sellphone.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sellphone.model.Customer;
import com.sellphone.service.CustomerService;
import com.sellphone.model.Item;
import com.sellphone.model.Product;
import com.sellphone.service.ProductService;

@Controller
public class HomeController {

	@Autowired
    private ProductService productService;

	@RequestMapping("/")
    public String home() {
        return "home";
    }
	
	@RequestMapping("/admin")
    public String adminpage() {
        return "admin";
    }
	
	@RequestMapping("/home")
    public String homepage() {
        return "home";
    }
    
    @RequestMapping("/registersuccess")
    public String registersuccesspage() {
        return "registersuccess";
    }
    
    @RequestMapping("/addsuccess")
	public String addsuccesspage(Model model) {
		
		List<Product> p = productService.listProducts();
        
		model.addAttribute("p", p);

        
		return "addsuccess";
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
    
    
    @Autowired
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
    
    
    public void setProductService(ProductService ps){
		this.productService = ps;
	}
		
	@RequestMapping(value="/addnewproduct", method = RequestMethod.GET)
	public String showaddnewproduct(Model model) {

		Product product = new Product();

		model.addAttribute("product", product);
/*		model.addAttribute("listProducts", this.productService.listProducts());
*/		
		return "addnewproduct";

	}

	//For add and update person both
	@RequestMapping(value= "/add", method = RequestMethod.GET)
	public String addProduct(@ModelAttribute("product")Product product,BindingResult r) {
		
		  System.out.print("\n\ninside controller = "+product.toString()); 
        if(product.getId() == 0){       	
			this.productService.addProduct(product);
		}else{
			this.productService.updateProduct(product);
		}
		
		return "redirect:/showproducts";
		
	}
	
	@RequestMapping("/showproducts")
    public String showlistall(Model model) {
        
		 List<Product> product = productService.listProducts();
	        model.addAttribute("product", product);

		return "showproducts";
    }
	@RequestMapping(value= "/remove/{id}", method = RequestMethod.GET)
	public String removeProduct(@PathVariable("id") int id,@ModelAttribute("product")Product product,BindingResult r) {
		
		  System.out.print("\n\ninside controller = "+product.toString()); 
        if(product.getId() != 0){       	
			this.productService.removeProduct(id);
        }
		return "redirect:/showproducts";
		
	}
	
	/*@RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") int id,Model model){
		
        this.productService.removeProduct(id);
        String message = "Product is successfully edited.";
        model.addAttribute("message", message);
         
        return "redirect:/products";
    }

*/
    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listProducts", this.productService.listProducts());
        return "redirect:/addnewproduct";
    }
   /* @RequestMapping("/addnewproduct")
    public String showlistall(Model model) {
        
		 List<Product> p = productService.listProducts();
	        model.addAttribute("p", p);

		return "addnewproduct";
    }
	*/
   
	



	
}
