package com.expense;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ExpenseDao {

		String url="jdbc:mysql://localhost:3306/jdbc",user="root",pass="Rajpoot@24";
		Connection con=null;
		PreparedStatement ps;
		ResultSet rs;
		
		public ExpenseDao() throws ClassNotFoundException, SQLException {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con=DriverManager.getConnection(url,user,pass);
		}
		public boolean saveData(ExpensePage bean,String uname) throws SQLException {
			ps=con.prepareStatement("INSERT INTO expenses (date, money, description , uname) VALUES (?, ?, ?,?)");
			ps.setDate(1, (Date) bean.getDate());
			ps.setInt(2,bean.getMoney());
			ps.setString(3,bean.getDesc());
			ps.setString(4,uname);// we not write bean.getuname because we not take value from bean we externally take this value 

		  int r=ps.executeUpdate();
		  if(r>0)
			  return true;
		  else
			  return false;
		}
		public boolean viewData(ExpensePage bean) throws SQLException {
			ps=con.prepareStatement("select * from expenses");
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				return true;
			else
				return false;
		}
		public ArrayList<ExpensePage> getAllExpenses(String uname) {
		    ArrayList<ExpensePage> expenses = new ArrayList<>();
		    try {
		        Connection con = DriverManager.getConnection(url, user, pass);
		        PreparedStatement ps = con.prepareStatement("SELECT * FROM expenses WHERE uname=?");
		        ps.setString(1, uname);
		        ResultSet rs = ps.executeQuery();
		        while (rs.next()) {
		            ExpensePage expense = new ExpensePage();
		            expense.setDate(rs.getDate("date"));
		            expense.setMoney(rs.getInt("money"));
		            expense.setDesc(rs.getString("description"));
		            expenses.add(expense);
		        }
		        con.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return expenses;
		}

}