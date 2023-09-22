package com.hackathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hackathon.dao.DataManager;

@Controller
public class IndexController {
	
	@GetMapping("/greet/{name}")
    public String greet(@PathVariable String name, ModelMap model) {
        String greet = "Hello!!! " + name + " How are You?";
        //logger.info(greet);
        System.out.println(greet);
        return "greet";
    }
    
    @RequestMapping("/test")
    public ModelAndView Test() {
    	return new ModelAndView("greet");
    }
    
    @GetMapping("/test2")
    public String Test2() {
    	return ("greet");
    }
    
    @RequestMapping(value="/")
    //public String mainPage(@RequestParam String uname, @RequestParam(value = "psw") String uValue) {
    public String mainPage() {
    	return "index";
    }
    
    @RequestMapping(value="/index")
    public String myIndex() {
    	return "index";
    }
    
    @RequestMapping("/helloWorld")
    public ModelAndView helloWorld() {
    	System.out.println("Helloworld");
    	DataManager dm = new DataManager();
    	dm.DataManagerTest();
    	return new ModelAndView("HelloWorld");
    }
    
    @RequestMapping(value="/SocialCoding/ForgotPassword")
    //public String mainPage(@RequestParam String uname, @RequestParam(value = "psw") String uValue) {
    public String forgetPassword(@RequestParam String uname, @RequestParam String psw) {
    	System.out.println("uname "+uname);
    	System.out.println("password "+psw);
    	return "greet";
    }
    @RequestMapping(value="/common")
    public String commonPage(@RequestParam String uname, @RequestParam String psw) {
    	
    	return "Common";
    }
	 

}
