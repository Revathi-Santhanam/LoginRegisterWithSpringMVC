package com.rev.Dao;

import com.rev.database.DbConnection;
import com.rev.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HomeDao {
    private static final String SELECT_ALL_QUERY ="SELECT * FROM usertable;" ;
    private static Connection connection;
    public static List<User> getAllUsers(){
        connection= DbConnection.getConnection();
        List<User> users=new ArrayList<>();
        try {
            PreparedStatement statement=connection.prepareStatement(SELECT_ALL_QUERY);
            ResultSet rs=statement.executeQuery();
            while (rs.next()){
                User user=new User();
                user.setId(rs.getInt("uid"));
                user.setUserName(rs.getString("uname"));
                user.setGender(rs.getString("gender"));
                user.setCountry(rs.getString("ucountry"));
                user.setSkills(rs.getString("skills"));
                users.add(user);

            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;

    }
}
