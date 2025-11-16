package dress;

		import java.sql.Connection;
		import java.sql.DriverManager;
		import java.sql.SQLException;

		public class DataBase {
		    private static final String URL = "jdbc:mysql://localhost:3306/dressshop?useSSL=false&serverTimezone=UTC";
		    private static final String USER = "root";
		    private static final String PASSWORD = "Pandu@15032004";

		    public static Connection getConnection() throws SQLException {
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");
		        } catch (ClassNotFoundException e) {
		            e.printStackTrace();
		        }
		        return DriverManager.getConnection(URL, USER, PASSWORD);
		    }
		}

