package com.example.simple.servlet.repositories;

import com.example.simple.entities.LoveliveSunshine;
import com.example.simple.entities.Subject;

import java.util.ArrayList;
import java.util.List;

public class LoveliveRepository {
    private static List<LoveliveSunshine> informations;

    public List<LoveliveSunshine> findAll() { // 2 Method
        return informations;
    }

    public LoveliveSunshine findByEp(String Ep) {
        return informations.stream().filter(LoveliveSunshine -> Ep.equals(LoveliveSunshine.getEp())).findFirst().orElse(null);
    }

    public LoveliveRepository() {
        initialize();
    }

    private void initialize() { //ADD ข้อมูลทุกครั้งที่เริ่มรัน
        informations = new ArrayList<>(20);
        informations.add(new LoveliveSunshine("001", "I Want to Shine!!"));
        informations.add(new LoveliveSunshine("002", "Catch the Transfer Student!"));
        informations.add(new LoveliveSunshine("003", "First Step"));
        informations.add(new LoveliveSunshine("004", "Two Girls' Feelings"));
        informations.add(new LoveliveSunshine("005", 	"Yohane Descends"));
        informations.add(new LoveliveSunshine("006", "Let's Make a PV"));
        informations.add(new LoveliveSunshine("007", 	"TOKYO"));
        informations.add(new LoveliveSunshine("008", "Isn't it Frustrating?"));
        informations.add(new LoveliveSunshine("009", 	"Young DREAMER"));
        informations.add(new LoveliveSunshine("010", 	"We've Got Stewshine"));
        informations.add(new LoveliveSunshine("011", 	"Aye-aye, My Friend"));
        informations.add(new LoveliveSunshine("012", 	"It's Time to Fly"));


    }
}
