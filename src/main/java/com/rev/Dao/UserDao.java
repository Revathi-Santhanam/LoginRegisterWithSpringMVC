package com.rev.Dao;

import com.rev.database.DbConnection;
import com.rev.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private static Connection connection;
    private static final String LOGIN_QUERY = "SELECT uid,email,u_password FROM usertable WHERE email=? AND u_password=?";




    public static User loginUser(String email, String password){
        connection= DbConnection.getConnection();
        User user=null;
        try {
            PreparedStatement statement=connection.prepareStatement(LOGIN_QUERY);
            statement.setString(1,email);
            statement.setString(2,password);
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                user=new User();
                user.setId(rs.getInt("uid"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("u_password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;

    }
}
