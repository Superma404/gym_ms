package com.pdsxy.mj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.pdsxy.mj.dao")
@EnableTransactionManagement
public class GymMsApplication {

    public static void main(String[] args) {
        SpringApplication.run(GymMsApplication.class, args);
    }

}

