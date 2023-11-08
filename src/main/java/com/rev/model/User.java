package com.rev.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {
    private int id;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String userName;
    private String email;
    private String password;
    private String gender;
    private String country;
    private String skills;

    public String getUserName(){
        return userName;
    }

    public void setUserName(String userName){
        this.userName = userName;
    }

    public String getGender(){
        return gender;
    }

    public void setGender(String gender){
        this.gender = gender;
    }

    public String getCountry(){
        return country;
    }

    public void setCountry(String country){
        this.country = country;
    }

    public String getSkills(){
        return skills;
    }

    public void setSkills(String skills){
        this.skills = skills;
    }

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }
}
