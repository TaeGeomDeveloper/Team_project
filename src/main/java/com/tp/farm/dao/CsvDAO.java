package com.tp.farm.dao;

import com.tp.farm.utils.ConnectionManagerV2;
import com.tp.farm.vo.CropDataVO;
import com.tp.farm.vo.FarmlandPriceVO;
import com.tp.farm.vo.TraditionalMarketVO;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@Repository
public class CsvDAO {

  public boolean insertDataTraditionalMarket(ArrayList<TraditionalMarketVO> list) throws SQLException{
      boolean flag = false;
      Connection con = ConnectionManagerV2.getConnection();
      String sql = "insert into traditional_market_information values(?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement pstmt = con.prepareStatement(sql);
      int affectedCount = 0;
      for(TraditionalMarketVO traditionalMarket : list){
          pstmt.setInt(1, traditionalMarket.getTmi_idx());
          pstmt.setString(2, traditionalMarket.getTmi_name());
          pstmt.setString(3, traditionalMarket.getTmi_marketType());
          pstmt.setString(4, traditionalMarket.getTmi_roadNameAddress());
          pstmt.setString(5, traditionalMarket.getTmi_numberAddress());
          pstmt.setInt(6, traditionalMarket.getTmi_storesNumber());
          pstmt.setString(7, traditionalMarket.getTmi_hasVoucher());
          pstmt.setString(8, traditionalMarket.getTmi_hasParkingLot());
          pstmt.setString(9, traditionalMarket.getTmi_phoneNumber());
          pstmt.setString(10, traditionalMarket.getTmi_renewalDate());
          affectedCount = pstmt.executeUpdate();
      }
      if(affectedCount>0){
          System.out.println("traditionalMarket data insert success");
          flag = true;
      }else {
          System.out.println("traditionalMarket data insert failed");
      }
      ConnectionManagerV2.closeConnection(null, pstmt, con);

      return  flag;
  }

  public boolean insertDataFarmlandPrice(ArrayList<FarmlandPriceVO> list) throws SQLException{
      boolean flag = false;
      Connection con = ConnectionManagerV2.getConnection();
      String sql = "insert into market_price_farmland values(?,?,?,?,?,?,?)";
      PreparedStatement pstmt = con.prepareStatement(sql);
      int affectedCount = 0;
      for(FarmlandPriceVO farmlandPrice : list){
          pstmt.setInt(1, farmlandPrice.getMpf_idx());
          pstmt.setString(2, farmlandPrice.getMpf_locationName());
          pstmt.setString(3, farmlandPrice.getMpf_locationNameDetail());
          pstmt.setInt(4, farmlandPrice.getMpf_lowestPrice());
          pstmt.setInt(5, farmlandPrice.getMpf_maximumPrice());
          pstmt.setInt(6, farmlandPrice.getMpf_averagePrice());
          pstmt.setInt(7, farmlandPrice.getMpf_lieutenant());
          affectedCount = pstmt.executeUpdate();
      }
      if (affectedCount>0){
          System.out.println("FarmlandPrice data insert success");
          flag = true;
      }else{
          System.out.println("FarmlandPrice data insert failed");
      }
      ConnectionManagerV2.closeConnection(null, pstmt, con);
      return flag;
  }

    public boolean insertDataCropData(ArrayList<CropDataVO> list) throws SQLException{
        boolean flag = false;
        Connection con = ConnectionManagerV2.getConnection();
        String sql = "insert into crop_data values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        int affectedCount = 0;
        for(CropDataVO cropData : list){
            pstmt.setInt(1, cropData.getCd_idx());
            pstmt.setString(2, cropData.getCd_cropClassification());
            pstmt.setString(3, cropData.getCd_cropName());
            pstmt.setInt(4, cropData.getCd_operatingCost());
            pstmt.setString(5, cropData.getCd_growthPeriodStart());
            pstmt.setString(6, cropData.getCd_growthPeriodEnd());
            pstmt.setString(7, cropData.getCd_harvestSeasonStart());
            pstmt.setString(8, cropData.getCd_harvestSeasonEnd());
            pstmt.setInt(9, cropData.getCd_income());
            pstmt.setInt(10, cropData.getCd_marketValue());
            pstmt.setString(11, cropData.getCd_insuranceStatus());
            affectedCount = pstmt.executeUpdate();
        }
        if(affectedCount>0){
            System.out.println("crop data insert success");
            flag = true;
        }else {
            System.out.println("crop data insert failed");
        }
        ConnectionManagerV2.closeConnection(null, pstmt, con);

        return  flag;
    }

    public boolean deleteTraditionalMarketData() throws SQLException {
        boolean flag = false;
        //커넥션 취득
        Connection con = ConnectionManagerV2.getConnection();
        //쿼리 작성
        String sql = "DELETE from traditional_market_information";
        //쿼리 전송 통로 작성
        Statement stmt = con.createStatement();
        //쿼리 전송
        int affectedCount = stmt.executeUpdate(sql);
        //결과 처리
        if(affectedCount>0) {
            flag = true;
            System.out.println("traditionalMarket data delete success");
        }
        //연결된 통로 모두 닫기
        ConnectionManagerV2.closeConnection(null, stmt, con);
        return flag;
    }

    public boolean deleteFarmlandPriceData() throws  SQLException{
      boolean flag = false;
      Connection con = ConnectionManagerV2.getConnection();
      String sql = "DELETE from market_price_farmland";
      Statement stmt = con.createStatement();
      int affectedCount = stmt.executeUpdate(sql);
      if(affectedCount>0){
          flag = true;
          System.out.println("farmlandPrice data delete success");
      }
      ConnectionManagerV2.closeConnection(null, stmt, con);
      return flag;
    }

    public boolean deleteCropData() throws  SQLException{
        boolean flag = false;
        Connection con = ConnectionManagerV2.getConnection();
        String sql = "DELETE from crop_data";
        Statement stmt = con.createStatement();
        int affectedCount = stmt.executeUpdate(sql);
        if(affectedCount>0){
            flag = true;
            System.out.println("crop data delete success");
        }
        ConnectionManagerV2.closeConnection(null, stmt, con);
        return flag;
    }

}
