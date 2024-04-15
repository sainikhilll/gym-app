package service;

import config.DatabaseConnection;
import model.Member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberService {
    Connection connection = DatabaseConnection.getDBConnection();
    public Member getMemberById(String member_Id) {
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from Member where member_Id='"+member_Id+"'");
            if(rs.next()) {
                Member member = new Member();
                member.setMember_Id(rs.getString("member_Id"));
                member.setFirst_name(rs.getString("first_name"));
                member.setLast_name(rs.getString("last_name"));
                member.setEmail(rs.getString("email"));
                member.setPhone(rs.getString("phone"));
                member.setHeight(rs.getString("height"));
                member.setWeight(rs.getString("weight"));
                member.setAge(rs.getString("age"));
                return member;
            }
        } catch (SQLException e) {
            System.out.println("Failed to getMemberByID(): MemberService"+e.getMessage());
        }
        return null;

    }
}
