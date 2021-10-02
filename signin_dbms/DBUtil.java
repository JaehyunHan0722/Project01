package project01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//DBMS의 자원을 액세스 하는 공통의 기능이 정의된 클래스
public class DBUtil {
	//드라이버 로딩
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	//커넥션 하기
	public static Connection getConnect() {
		String url = "jdbc:oracle:thin:@192.168.35.249:1521:xe";
		String user = "project_01";
		String password = "1234";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		System.out.println("프로젝트01 커넥트 성공");
		return con;
	}
	//자원반납 - ResultSet, Statement, Connection
	public static void close(ResultSet rs, Statement stmt, Connection con) {
		try {
			if(rs!=null) rs.close();
			if(con!=null) con.close();
			if(stmt!=null) stmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	//커넥션을 반납하는 메소드
	public static void close(Connection con) {
		try {
			if(con!=null) con.close();			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	//Statement를 반납하는 메소드
	//ResultSet을 반납하는 메소드
}
