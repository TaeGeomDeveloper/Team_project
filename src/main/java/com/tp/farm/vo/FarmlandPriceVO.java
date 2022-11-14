package com.tp.farm.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class FarmlandPriceVO {
    private int mpf_idx;
    private String mpf_locationName;
    private String mpf_locationNameDetail;
    private int mpf_lowestPrice;
    private int mpf_maximumPrice;
    private int mpf_averagePrice;
    private int mpf_lieutenant;

    public FarmlandPriceVO(String data){
        String[] temp = data.split(",");
        mpf_locationName = temp[0].strip();
        mpf_locationNameDetail = temp[1].strip();
        mpf_lowestPrice = Integer.parseInt(temp[2].strip());
        mpf_maximumPrice = Integer.parseInt(temp[3].strip());
        mpf_averagePrice = Integer.parseInt(temp[4].strip());
        mpf_lieutenant = Integer.parseInt(temp[5].strip());
    }
}
