package com.tp.farm.service;

import com.tp.farm.dao.CsvDAO;
import com.tp.farm.vo.FarmlandPriceVO;
import com.tp.farm.vo.TraditionalMarketVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@Service
public class CsvService {

    @Autowired
    CsvDAO csvDAO;

    //DB에 insert 실행하는 코드
    public void insertDataTraditionalMarket() throws SQLException, IOException {
        boolean flag = csvDAO.deleteTraditionalMarketData();
        if(flag){
            System.out.println("전통시장 데이터 모두 삭제 완료");
            csvDAO.insertDataTraditionalMarket(this.getTraditionalMarketData());
            System.out.println("전통시장 데이터 모두 입력 완료");
        }
        //System.out.println(flag);
    }

    public void  insertDataFarmlandPrice() throws SQLException, IOException{
        boolean flag = csvDAO.deleteFarmlandPriceData();
        if(flag){
            System.out.println("농지 시세 테이블 모두 삭제 완료");
            csvDAO.insertDataFarmlandPrice(this.getFarmlandPriceData());
            System.out.println("농지 시세 테이블 모두 입력 완료");
        }
    }

    //지정된 경로에 csv 파일 읽는 코드
    public ArrayList<TraditionalMarketVO> getTraditionalMarketData() throws IOException{
        ArrayList<TraditionalMarketVO> list = new ArrayList<>();
        File file = new File("C:/dev/install/Project_base/전국전통시장표준데이터_수정본.csv");
        FileReader fr =  new FileReader(file);
        BufferedReader br = new BufferedReader(fr);
        String line = null;
        TraditionalMarketVO traditionalMarket = null;
        while((line=br.readLine())!=null){
            traditionalMarket = new TraditionalMarketVO(line);
            list.add(traditionalMarket);
        }
        br.close();
        fr.close();
        return list;
    }

    public ArrayList<FarmlandPriceVO> getFarmlandPriceData() throws IOException{
        ArrayList<FarmlandPriceVO> list = new ArrayList<>();
        File file = new File("C:/dev/install/Project_base/농지_시세_테이블.csv");
        FileReader fr =  new FileReader(file);
        BufferedReader br = new BufferedReader(fr);
        String line = null;
        FarmlandPriceVO farmlandPrice = null;
        while((line=br.readLine())!=null){
            farmlandPrice = new FarmlandPriceVO(line);
            list.add(farmlandPrice);
        }
        br.close();
        fr.close();
        return list;
    }

}
