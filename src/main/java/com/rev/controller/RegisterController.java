package com.rev.controller;

import com.rev.Dao.RegisterDao;
import com.rev.Dao.UserDao;
import com.rev.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/registerForm")
public class RegisterController {

    @RequestMapping(value="/register",method= RequestMethod.GET)
    public String register(HttpServletRequest httpServletRequest, Model model){
    return "register";
    }
    @RequestMapping("/index")
    public String login(){
        return "index";
    }
    @RequestMapping(value="/registers",method= RequestMethod.POST)
    public String newUsers(@RequestParam("username") String name,@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("gender") String gender,@RequestParam("country") String country,@RequestParam("skill") String skills){
        RegisterDao.addUser(name,email,password,gender,country,skills);
        return "index";
    }

}
