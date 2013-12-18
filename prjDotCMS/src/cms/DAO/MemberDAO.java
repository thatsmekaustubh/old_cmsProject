package cms.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import cms.DBConnect.DBConnect;
import cms.DTO.LoginModel;
import cms.DTO.ZipcodeDTO;
import cms.DTO.ZipcodeModel;


public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	DBConnect db;
	LoginModel mdto = null;
	Vector<LoginModel> mVec = null;

	public MemberDAO() {
		db=new DBConnect();
		mVec = new Vector<LoginModel>();
	}
	public Vector<LoginModel> selectMember(String key, int flag){
		conn=db.getConnection();
		String sql = null;
		if(flag==1){
			sql="select * from member where name=?";
		}else if(flag==2){
			sql="select * from member where id=?";
		}
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, key);
			rs=pstmt.executeQuery();

			while(rs.next()){
				mdto=getDTOfromRS(rs);
				mVec.add(mdto);
			}
			return mVec;
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}

	}

	public int selectCount(){
		conn=db.getConnection();
		String sql="select * from member";
		int cnt = 0;
		try{
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				cnt++;
			}
			return cnt;
		}catch (SQLException e) {
			System.err.println(e.getMessage());
			return cnt;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}

	public Vector<LoginModel> selectAll(int sPage, int ePage){
		conn=db.getConnection();
		String sql="select * from member limit ?,?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sPage);
			pstmt.setInt(2, ePage);
			rs = pstmt.executeQuery();

			while(rs.next()){
				mdto=getDTOfromRS(rs);
				mVec.add(mdto);
			}
			return mVec;
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}
	}
	public Vector<LoginModel> selectAll(){
		String sql="select * from member";
		conn=db.getConnection();
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				mdto=getDTOfromRS(rs);
				mVec.add(mdto);
			}
			return mVec;
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}

	}

	public int idCheck(String id){
		String sql="select * from member where id=?";
		conn=db.getConnection();
		int cnt=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();

			while(rs.next()){
				cnt++;
			}
			return cnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}

	}
	// selectAll() ==> isValidUser();	
	public LoginModel isValidUser(String id, String pw) {
		String sql="select * from member where id=? and pw=?";
		conn=db.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				mdto = new LoginModel();
				mdto.setId(rs.getString("id"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setAddress(rs.getString("address"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setEmail(rs.getString("email"));
			}
			if(mdto==null){
				System.out.println("mdto null");
			}
			return mdto;
		} catch(SQLException e) {
			System.out.println(e.getMessage());
			return null;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}
	public int updateUser(LoginModel dto) {
		String query = "update member set pw=?, name=?, "
				+ "address=?, phone=?, email=? where id=?";		

		conn=db.getConnection();
		int row = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getId());
			row = pstmt.executeUpdate();
			if(row >= 1) {
				return row;
			}				
		} catch(SQLException e) {
			System.err.println(e.getMessage());			
			return row;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
		return row;
	}
	public int deleteUser(String id, String pw) {
		String query = "delete from member where id=? and pw=?";		
		conn=db.getConnection();
		int row = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			row = pstmt.executeUpdate();
			if(row >= 1) {
				return row;
			}				
		} catch(SQLException e) {
			System.out.println(e.getMessage());			
			return row;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
		return row;
	}
	public int insertUser(LoginModel dto) {

		String query = "insert into member values(?,?,?,?,?,?)";		
		conn=db.getConnection();
		int row = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getPhone());
			pstmt.setString(6, dto.getEmail());
			row = pstmt.executeUpdate();
			if(row >= 0) {
				return row;
			}				
		} catch(SQLException e) {
			System.out.println(e.getMessage());
			return row;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
		return 1;
	}
	public LoginModel getDTOfromRS(ResultSet rs) {
		LoginModel mdto1 = new LoginModel();
		try {// filed name : user ==> id, password ==> pw
			mdto1.setId(rs.getString("id"));
			mdto1.setPw(rs.getString("pw"));
			mdto1.setName(rs.getString("name"));
			mdto1.setAddress(rs.getString("address"));
			mdto1.setPhone(rs.getString("phone"));
			mdto1.setEmail(rs.getString("email"));
			return mdto1;
		}
		catch(SQLException sqlEx){
			return mdto1 = null;
		}		
	}
	public ZipcodeModel getZipfromRS(ResultSet rs) {
		ZipcodeModel zdto = new ZipcodeModel();
		try {
			zdto.setSeq(rs.getInt("seq"));
			zdto.setZipcode(rs.getString("zipcode"));
			zdto.setSido(rs.getString("sido"));
			zdto.setGugun(rs.getString("gugun"));
			zdto.setDong(rs.getString("dong"));
			zdto.setBunji(rs.getString("bunji"));
			return zdto;
		}
		catch(SQLException sqlEx){
			return zdto = null;
		}		
	}
}
