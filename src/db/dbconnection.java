package db;

import java.sql.*;

public class dbconnection {
        private String dbURL = "jdbc:mysql://localhost:3306/lab5";
        private String username = "root";
        private String password = "";
        private Connection connection;
        public dbconnection(){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(dbURL,username,password);
                if(connection!=null){
                    System.out.println("Success");
                }
            }catch (ClassNotFoundException e){
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        public void insertRecord(String name,String password,String email,String dob,String phone,String fee,String course,String gender){
            try {
                String sqlQuery = "INSERT INTO user(name,password,email,dob,phone,fee,course,gender) VALUES(?,?,?,?,?,?,?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, password);
                preparedStatement.setString(3, email);
                preparedStatement.setString(4, dob);
                preparedStatement.setString(5, phone);
                preparedStatement.setString(6, fee);
                preparedStatement.setString(7, course);
                preparedStatement.setString(8, gender);

                int noOfRowsInserted = preparedStatement.executeUpdate();
                if(noOfRowsInserted>0){
                    System.out.println(noOfRowsInserted + " rows inserted!");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        public void updateRecord(int id,String firstName,String lastName,String email){
            try {
                String sqlQuery = "UPDATE student SET first_name=?,last_name=?,email=? WHERE id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
                preparedStatement.setString(1,firstName);
                preparedStatement.setString(2,lastName);
                preparedStatement.setString(3,email);
                preparedStatement.setInt(4,id);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        public void deleteRecord(int id){
            try {
                String sqlQuery = "DELETE from user WHERE id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
                preparedStatement.setInt(1,id);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        public ResultSet getRecord(int id){
            try {
                String sqlQuery = "SELECT * FROM user where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
                preparedStatement.setInt(1,id);
                ResultSet result = preparedStatement.executeQuery();
                return result;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }

        public ResultSet getRecords(){
            try {
                String sqlQuery = "SELECT * FROM user";
                Statement statement = connection.createStatement();
                ResultSet result = statement.executeQuery(sqlQuery);
                return result;

            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }
    }