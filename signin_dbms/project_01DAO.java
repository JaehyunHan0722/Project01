package project01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class project_01DAO {
	public void insert(project_01DTO user) {
		String sql = "insert into userinfo values(?,?,?,?)";
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = DBUtil.getConnect();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, user.getUserid());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getName());
			stmt.setString(4, user.getCellnum());
			stmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(null, stmt, con);
		}
	}
//	public void update(project_01DTO user) {
//		StringBuffer sql = new StringBuffer();
//		sql.append("update project_01");
//		sql.append("set password=?");
//		sql.append("where userid=?");
//		Connection con = null;
//		PreparedStatement stmt = null;
//		
//		try {
//			con = DBUtil.getConnect();
//			stmt = con.prepareStatement(sql.toString());
//			stmt.setString(1, user.getPassword());
//			stmt.setString(2, user.getUserid());
//		}catch(SQLException e) {
//			e.printStackTrace();
//		}finally {
//			DBUtil.close(null, stmt, con);
//		}
//	}

}
