package dao.chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;

public class ProductDao {

	public String getProductNameById(int id, ServletContext app) {
		String sql = "SELECT ProductName FROM Products WHERE ProductID = ? ";
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, id);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return rs.getString(1);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
		
	}
}




