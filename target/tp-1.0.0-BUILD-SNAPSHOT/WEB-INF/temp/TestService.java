package gntp.project.factory.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gntp.project.factory.dao.TestDAO;
import gntp.project.factory.vo.ReplyVO;

@Service("testService")
public class TestService {

	@Autowired
	private TestDAO testDAO;
	
	public boolean testService() {
		boolean flag = false;
		try {
			flag = testDAO.testDB();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	public ReplyVO findReply(String seq) {
		// TODO Auto-generated method stub
		ReplyVO vo = null;
		try {
			vo = testDAO.selectReply(seq);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	
}
