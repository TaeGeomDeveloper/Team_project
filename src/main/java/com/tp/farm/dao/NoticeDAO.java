package com.tp.farm.dao;

import com.tp.farm.vo.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

/*
        작성자 : 이영록, 윤태검
        내용 : NoticeDAO 추가

        일시 : 2022.11.01 ~
 */

@Repository
public class NoticeDAO {

    @Autowired
    private SqlSession sqlSession;

    public boolean insertBoard(BoardVO board) {
        boolean flag = false;
        int affectedCount = sqlSession.insert("mapper.notice.insertBoard", board);
        if(affectedCount>0) {
            System.out.println("DAO에서 insert완료");
            flag = true;
        }
        return flag;
    }

    public List<BoardVO> selectAll() {
        List<BoardVO> list = sqlSession.selectList("mapper.notice.selectAllBoard");
        return list;
    }


    public boolean updateCount(String seq, String token) {
        boolean flag = false;
        if(token=="on") {
            int affectedCount = sqlSession.update("mapper.notice.updateDownloadCount", seq);
            if (affectedCount > 0) {
                System.out.println("다운로드 완료");
                flag = true;
            } else {
                System.out.println("다운로드 실패");
            }
        }
        return flag;
    }

    public BoardVO selectOneBoard(String seq) {
        BoardVO board = (BoardVO) sqlSession.selectOne("mapper.notice.selectOneBoardBySeq", seq);
        return board;
    }

    public boolean update(BoardVO board) {
        boolean flag = false;
        int affectedCount = sqlSession.update("updateBoard", board);
        if(affectedCount>0) {
            System.out.println("DAO update성공");
        } else {
            System.out.println("DAO update실패");
        }
        return flag;
    }

    public boolean deleteOne(String seq) {
        boolean flag = false;
        int affectedCount = sqlSession.delete("mapper.notice.deleteOne", seq);
        if(affectedCount>0) {
            flag = true;
        }
        return flag;
    }
}
