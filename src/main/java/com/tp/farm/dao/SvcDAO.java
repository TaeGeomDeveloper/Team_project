package com.tp.farm.dao;

import com.tp.farm.vo.CropSelectVO;
import com.tp.farm.vo.MemberVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("SvcDAO")
public class SvcDAO {

    @Autowired
    private SqlSession sqlSession;

    //작물 선택 등록!
    public boolean insertFarmInfo(CropSelectVO selectVO) {
        boolean flag = false;
        int affectedCount = sqlSession.insert("mapper.svc.insertFarmInfo", selectVO);
        if(affectedCount>0) {
            flag = true;
        }
        return flag;
    }


}
