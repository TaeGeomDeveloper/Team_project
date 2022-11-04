package gntp.project.factory.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gntp.project.factory.vo.ReplyVO;

@Repository("testDAO")
public class TestDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public boolean testDB() throws SQLException {
		boolean flag = false;
		Connection con = sqlSession.getConnection();
		if(con!=null) {
			flag = true;
			con.close();
		}
		return flag;
	}
	
    public ReplyVO selectReply(String seq) throws SQLException {
	   ReplyVO vo = null;
	   vo = sqlSession.selectOne("mapper.reply.selectReplyBySeq", Integer.parseInt(seq));
	   
	   return vo;
   }
}
