package badoora;



//STEP 1. Import required packages
import java.sql.*;
import java.util.*;

public class dbmysql {
	// JDBC driver name and database URL
	
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	static final String DB_URL = "jdbc:mysql://127.0.0.1:3306/test?user=badr";

	// Database credentials
	static final String USER = "badr";
	static final String PASS = "";
	public void create (ap Ap){
		
		Connection conn = null;
		//Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			
			String sql = "insert into create_account (lname, fname,email, password,gender,country,address,postal,ccard,cnum,se,vnum) VALUES (?, ?, ?, ?,?,?,?,?,?,?,?,?)";
			
				PreparedStatement statment = conn.prepareStatement(sql);
				statment.setString(1,Ap.getLname());
				statment.setString(2,Ap.getFname());
				statment.setString(3,Ap.getEmail());
				statment.setString(4,Ap.getPassword());
				statment.setString(5,Ap.getGender());
				statment.setString(6,Ap.getCountry());
				statment.setString(7,Ap.getAddress());
				statment.setString(8,Ap.getPostal());
				statment.setString(9,Ap.getCcard());
				statment.setString(10,Ap.getCnum());
				statment.setInt(11,Ap.getSe());
				statment.setString(12,Ap.getVnum());
				statment.execute();
				conn.close();
			
			
			
		
			
			//stmt.close();
			//conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		}  
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
	//	System.out.println("End Insert Table!");
	
	//************************************************
	public void create (application Application){
		Connection conn = null;
		//Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			
			String sql = "insert into registration (id, age,first, last) VALUES (?, ?, ?, ?)";
			
				PreparedStatement statment = conn.prepareStatement(sql);
				statment.setInt(1,Application.getId());
				statment.setInt(2,Application.getAge());
				statment.setString(3,Application.getFirat());
				statment.setString(4,Application.getLast());
				statment.execute();
				conn.close();
			
			
			
		
			
			//stmt.close();
			//conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		}  
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
	//	System.out.println("End Insert Table!");

	public List <application> selectall(){
		List<application> applications = new ArrayList<application>();
		Connection conn = null;
		//Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
		
		
		
		String sql = "SELECT id, first, last, age FROM registration";
		PreparedStatement statment = conn.prepareStatement(sql);
		
		ResultSet  result = statment.executeQuery();
		while(result.next()){
			int id =result.getInt("id");
			int age = result.getInt("age");
			String first = result.getString("first");
			String last = result.getString("last");
			application app = new application(id , age ,first,last);
			applications.add(app);
			
		}
		
	//	return applications;
		
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		}  
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			
			return applications;
			
		} // end try
		
		
		
	
	
	
	public static void main(String[] args) {
		//dropTable();
		
		//createTable();

		//updateTable();

		//queryTable();
		dbmysql ado = new dbmysql();
		application app1 = new application (18, 45, "basem","alejely");
		ado.create(app1);

	}// end main

	public static void queryTable() {

		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			stmt = conn.createStatement();

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT id, first, last, age FROM registration";
			ResultSet rs = stmt.executeQuery(sql);

			// STEP 5: Extract data from result set
			while (rs.next()) {
				// Retrieve by column name
				int id = rs.getInt("id");
				int age = rs.getInt("age");
				String first = rs.getString("first");
				String last = rs.getString("last");
				// Display values
				System.out.print("ID: " + id);
				System.out.print(", Age: " + age);
				System.out.print(", First: " + first);
				System.out.println(", Last: " + last);
			}

			// STEP 6: Clean-up environment
			rs.close();

			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("End Query Data");
	}

	private static void updateTable() {

		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			stmt = conn.createStatement();

			String sql = "INSERT INTO registration " + "VALUES (100, 'Zara', 'Ali', 18)";
			stmt.executeUpdate(sql);
			sql = "INSERT INTO registration " + "VALUES (101, 'Mahnaz', 'Fatma', 25)";
			stmt.executeUpdate(sql);
			sql = "INSERT INTO registration " + "VALUES (102, 'Zaid', 'Khan', 30)";
			stmt.executeUpdate(sql);
			sql = "INSERT INTO registration " + "VALUES(103, 'Sumit', 'Mittal', 28)";
			stmt.executeUpdate(sql);

			System.out.println("Created table in given database...");

			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("End Insert Table!");

	}

	private static void createTable() {
		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			stmt = conn.createStatement();

			String sql = "CREATE TABLE REGISTRATION " + "(id INTEGER not NULL, " + " first VARCHAR(255), "
					+ " last VARCHAR(255), " + " age INTEGER, " + " PRIMARY KEY ( id ))";

			stmt.executeUpdate(sql);
			System.out.println("Created table in given database...");

			stmt.close();
			conn.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("End Create Table!");
	}

	public static void dropTable() {

		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to a selected database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("Connected database successfully...");

			// STEP 4: Execute a query
			System.out.println("Deleting table in given database...");
			stmt = conn.createStatement();

			String sql = "DROP TABLE REGISTRATION ";

			stmt.executeUpdate(sql);
			System.out.println("Table  deleted in given database...");
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					conn.close();
			} catch (SQLException se) {
			} // do nothing
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("Drop Table Registration!");
	}// end main

}// end FirstExample