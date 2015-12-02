package com.watchsale.rest.getdata;

import javax.ws.rs.*;
import javax.ws.rs.core.*;

import java.sql.*;

@Path("/data/{param}")
public class Watchdata {
		
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String dbName = "WatchSale";
	private static final String passwrod = "liuzhixing";
	private static final String userName = "root";
	private static final String url = "jdbc:mysql://localhost:3306/" + dbName;
	
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String returnData(@PathParam("param") String msg) throws Exception {
		
		PreparedStatement query = null;
		String myString = null;
		String returnString = null;
		Connection conn = null;
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userName,
					passwrod);
			query = conn.prepareStatement("select * from WATCH_DATA where _id = " + msg);
			ResultSet rs = query.executeQuery();
			
			while(rs.next()){
				myString = "<p> id : " + rs.getInt(1) + " brand : " + rs.getString(2) 
						+ " model : " + rs.getString(3) + " color : " + rs.getString(4) 
						+ " gender : " + rs.getString(5) + " price : " + rs.getString(6) 
						+ " warrenty : " + rs.getString(7) + " image : " + rs.getString(8) 
						+ "</p>";
			}
			
			query.close();
			
			returnString = "<p>Database search</p>" + 
						"<p>Date return: </p>" + myString;
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			if(conn != null) conn.close();
		}
		
		return returnString;
	}

}
