package com.tp.farm.service;

import com.tp.farm.dao.ReplyDAO;
import com.tp.farm.vo.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NoticeReplyService {

    @Autowired
    private ReplyDAO replyDAO;

    public boolean writeReply(ReplyVO reply) {
        boolean flag = false;
        flag = replyDAO.insertReply(reply);
        if(flag) {
            System.out.println("service reply 성공");
        } else {
            System.out.println("service reply 실패");
        }
        return flag;
    }

    public boolean writeReReply(ReplyVO reply) {
        boolean flag = false;
        flag = replyDAO.insertReReply(reply);
        if(flag) {
            System.out.println("service Rereply 성공");
        } else {
            System.out.println("service Rereply 실패");
        }
        return flag;
    }

    public List<ReplyVO> readAllReply(String seq) {
        List<ReplyVO> list = replyDAO.selectAllReply(seq);
        return  list;
    }

    public boolean deleteReply(int cbrSeq) {
        boolean flag = false;
        flag = replyDAO.deleteReply(cbrSeq);
        return flag;
    }
}
