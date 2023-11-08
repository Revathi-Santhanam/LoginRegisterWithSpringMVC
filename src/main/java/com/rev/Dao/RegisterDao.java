package com.rev.Dao;

import com.rev.database.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
    private static final String INSERT_NEW_USER = "INSERT INTO usertable (uname,email,u_password,gender,ucountry,skills) VALUES (?,?,?,?,?,?);";
    private static Connection connection;
    public static void addUser(String name, String email, String password, String gender, String country, String skills){
        connection= DbConnection.getConnection();
        try {
            PreparedStatement statement=connection.prepareStatement(INSERT_NEW_USER);
            statement.setString(1,name);
            statement.setString(2,email);
            statement.setString(3,password);
            statement.setString(4,gender);
            statement.setString(5,country);
            statement.setString(6,skills);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        

    }
}
