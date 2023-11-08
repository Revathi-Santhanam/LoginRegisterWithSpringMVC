package com.rev.controller;

import com.rev.Dao.HomeDao;
import com.rev.Dao.UserDao;
import com.rev.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/homePage")
public class HomeController {
    @RequestMapping("/home")
    public String loginForm(HttpServletRequest httpServletRequest, Model model){
        String email=httpServletRequest.getParameter("email");
        String password=httpServletRequest.getParameter("passowrd");
        UserDao.loginUser(email,password);
        List<User> users= HomeDao.getAllUsers();
        model.addAttribute("users", users);
        return "home";
    }
    @RequestMapping("/logout")
    public String logout(){
        return "index";
    }




}
