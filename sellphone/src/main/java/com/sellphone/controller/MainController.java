package com.sellphone.controller;

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