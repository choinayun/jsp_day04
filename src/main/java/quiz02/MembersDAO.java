package quiz02;

import java.sql.*;
import java.util.ArrayList;

import DBPKG.DBConnect;

public class MembersDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MembersDAO() {
		
		try {
			con = DBConnect.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MembersDTO> getMembers() {
		
		ArrayList<MembersDTO> list = new ArrayList<MembersDTO>();
		String sql = "select * from members" ;
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				MembersDTO dto = new MembersDTO();
				dto.setId( rs.getString("id") );
				dto.setPwd( rs.getString("pwd") );
				dto.setName( rs.getString("name") );
				dto.setAddr( rs.getString("addr") );
				dto.setTel( rs.getString("tel") );
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
