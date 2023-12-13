package pF.integrador.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConexion {
	
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/trabajo_integrador";
	private static final String USER = "root";
	private static final String PASS = "";

	static {
		try {
			Class.forName(CONTROLADOR);
		} catch (ClassNotFoundException e) {
			System.out.println("Error al cargar el controlador");
			e.printStackTrace();
		}
	}

	public Connection conectar() throws SQLException {
		Connection conexion = null;
		try {
			conexion = DriverManager.getConnection(URL, USER, PASS);
		} catch (SQLException e) {
			System.out.println("Error al establecer la conexión");
			throw e;
		} finally {
			
		}
		return conexion;
	}
}

		