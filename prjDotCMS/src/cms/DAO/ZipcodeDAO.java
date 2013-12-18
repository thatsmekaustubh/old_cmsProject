package cms.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cms.DBConnect.DBConnect;
import cms.DTO.ZipcodeDTO;

public class ZipcodeDAO {
	ZipcodeDTO zModel = 				null;
	ArrayList<ZipcodeDTO> zListModel = 	new ArrayList<ZipcodeDTO>();
	Connection conn = 					null; // 객체 변수, 멤버 변수
	PreparedStatement pstmt = 			null; // 삽
	ResultSet rs = 						null;
	DBConnect db = 						null;
	public ZipcodeDAO() {
		// TODO Auto-generated constructor stub
		db=new DBConnect();
	}

	public ArrayList<ZipcodeDTO> selectDong(String dong, int sPage, int ePage) {
		conn=db.getConnection();
		String sql="select * from zipcode where dong like ? limit ?,?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+dong+"%");
			pstmt.setInt(2, sPage);
			pstmt.setInt(3, ePage);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				zModel = makeModelUsingRs(rs);
				zListModel.add(zModel);
			}
			return zListModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			return zListModel;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}
	public int selectCount(String dong) {
		conn=db.getConnection();
		String sql="select * from zipcode where dong like ?";
		/*String query = "select * from zipcode "
		+ "where dong like '%" + dong + "%'";*/
		int cnt = 0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,"%"+dong+"%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt++;
			}
			return cnt;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			return cnt;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}
	public ArrayList<ZipcodeDTO> selectDong(String dong) {
		zListModel = new ArrayList<ZipcodeDTO>();
		conn=db.getConnection();
		String sql="select * from zipcode where dong like ?";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+dong+"%");
			rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				zModel = makeModelUsingRs(rs);
				zListModel.add(zModel);
			}
			return zListModel;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return zListModel;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}
	public ArrayList<ZipcodeDTO> selectSeq(int seq) {
		zListModel = new ArrayList<ZipcodeDTO>();
		conn=db.getConnection();
		/*String query = "select * from zipcode where seq=" + seq;*/
		String sql = "select  from zipcode where seq=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				zModel = makeModelUsingRs(rs);
				zListModel.add(zModel);
			}
			return zListModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			return zListModel;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}

	public ZipcodeDTO makeModelUsingRs(ResultSet argRs) {
		zModel = new ZipcodeDTO();
		try {
			zModel.setSeq(argRs.getInt("seq"));
			zModel.setZipcode(argRs.getString("zipcode"));
			zModel.setSido(argRs.getString("sido"));
			zModel.setGugun(argRs.getString("gugun"));
			zModel.setDong(argRs.getString("dong"));
			zModel.setBunji(argRs.getString("bunji"));
			return zModel;
		} catch (SQLException sqlEx) {
			return zModel = null;
		}
	}

	public ArrayList<ZipcodeDTO> selectAll() {
		zListModel = new ArrayList<ZipcodeDTO>();
		conn=db.getConnection();
		/*String query = "select * from zipcode";*/
		String sql = "select * from zipcode";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				zModel = makeModelUsingRs(rs);
				zListModel.add(zModel);
			}
			return zListModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			return zListModel;
		} finally {
			db.disconnect(rs, pstmt, conn);
		}
	}
}
