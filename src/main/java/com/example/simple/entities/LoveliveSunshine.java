package com.example.simple.entities;

import lombok.*;

import java.awt.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class LoveliveSunshine {
    private String Ep ;
    private String title ;

    public String getDescribe(String Ep) {
        if(Ep =="001") {
            return "輝きたい!! Kagayakitai!!";
        }
        else if(Ep =="002") {
            return "転校生をつかまえろ! Tenkousei o Tsukamaero!";
        }
        else {
            return "No Desc" ;
        }
    }
}
