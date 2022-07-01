package quiz01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBPKG.DBConnect;

public class StudentDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs; 
	
	public StudentDAO() {
		try {
			// 오라클과 자바 연결 
			con = DBConnect.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<StudentDTO> getStudent() {
		
		ArrayList<StudentDTO> list = new ArrayList<StudentDTO>();
		
		String sql = " select * from STUDENT ";
		
		try {
			ps = con.prepareStatement(sql);
			
			// select 형태로 가져오니까 executeQuery() 사용 
			rs = ps.executeQuery(); 
			
			while(rs.next()) {
				
				StudentDTO dto = new StudentDTO();
				dto.setId( rs.getString("id") );
				dto.setName( rs.getString("name") );
				dto.setKor( rs.getString("kor") );
				dto.setEng( rs.getString("eng") );
				dto.setMath( rs.getString("math") );
				
				list.add(dto);
				
				System.out.println("id : " + rs.getString("id"));
				System.out.println("name : " + rs.getString("name"));
				System.out.println("kor : " + rs.getString("kor"));
				System.out.println("eng : " + rs.getString("eng"));
				System.out.println("math : " + rs.getString("math"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public StudentDTO getUser(String id) {
		
		String sql = "select * from student where id=?" ;
		StudentDTO dto = new StudentDTO();
		
		try { 
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto.setId( rs.getString("id")); 
				dto.setName( rs.getString("name")); 
				dto.setKor( rs.getString("kor")); 
				dto.setEng( rs.getString("eng")); 
				dto.setMath( rs.getString("math")); 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
