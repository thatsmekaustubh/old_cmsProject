package cms.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.w3c.dom.ls.LSException;

import com.sun.org.apache.regexp.internal.recompile;

import cms.DBConnect.DBConnect;
import cms.DTO.ProjectDTO;

public class ProjectDAO {
	DBConnect db;
	Connection conn;
	String sql;
	PreparedStatement pstmt;
	ResultSet rs;
	ArrayList<ProjectDTO> list=new ArrayList<ProjectDTO>();
	ProjectDTO dto;
	public ProjectDAO(){
		db=new DBConnect();
	}

	public int update(ProjectDTO dto){
		sql="update teamproject set title=?, author=?, image=?" +
				", filename=?, description=? where seq=?";
		conn=db.getConnection();
		int row = 0;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getAuthor());
			pstmt.setString(3, dto.getImage());
			pstmt.setString(4, dto.getFilename());
			pstmt.setString(5, dto.getDescription());
			pstmt.setInt(6, dto.getSeq());
			row = pstmt.executeUpdate();
			return row;
		}catch(SQLException se){
			se.printStackTrace();
			return 0;
		}finally{
			db.disconnect(pstmt, conn);
		}
	}

	public ArrayList<ProjectDTO> select(int key){
		sql="select * from teamproject where seq=?";
		conn=db.getConnection();
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, key);
			rs=pstmt.executeQuery();

			while(rs.next()){
				dto=new ProjectDTO();
				dto.setSeq(rs.getInt("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getString("author"));
				dto.setImage(rs.getString("image"));
				dto.setFilename(rs.getString("filename"));
				dto.setDescription(rs.getString("description"));
				list.add(dto);
			}
			return list;
		}catch(SQLException se){
			se.printStackTrace();
			return null;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}
	}

	public int delete(int key){
		sql="delete from teamproject where seq=?";
		conn=db.getConnection();
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, key);
			int row=pstmt.executeUpdate();
			return row;
		}catch(SQLException se){
			return 0;
		}finally{
			db.disconnect(pstmt, conn);
		}
	}
	public int selectCount(){
		sql="select * from teamproject";
		conn=db.getConnection();
		int cnt=0;
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				cnt++;
			}
			return cnt;

		}catch(SQLException se){
			se.printStackTrace();
			return 0;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}
	}

	public ArrayList<ProjectDTO> selectAll(int sPage){
		sql="select * from teamproject limit ?,?";
		conn=db.getConnection();

		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sPage);
			pstmt.setInt(2, 10);
			rs=pstmt.executeQuery();
			while(rs.next()){
				dto=new ProjectDTO();
				dto.setSeq(rs.getInt("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getString("author"));
				dto.setImage(rs.getString("image"));
				dto.setFilename(rs.getString("filename"));
				dto.setDescription(rs.getString("description"));
				list.add(dto);
			}
			return list;
		}catch(SQLException se){
			se.printStackTrace();
			return null;
		}finally{
			db.disconnect(rs, pstmt, conn);
		}
	}

	public int insert(ProjectDTO dto){
		sql="insert into teamproject (title,author,image,filename,description) values(?,?,?,?,?)";
		conn=db.getConnection();
		int row=0;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getAuthor());
			pstmt.setString(3, dto.getImage());
			pstmt.setString(4, dto.getFilename());
			pstmt.setString(5, dto.getDescription());
			row=pstmt.executeUpdate();
			return row;
		}catch(SQLException se){
			se.printStackTrace();
			return row;
		}finally{
			db.disconnect(pstmt, conn);
		}
	}
}
