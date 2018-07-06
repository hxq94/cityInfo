package com.java1234.dao;

import com.java1234.entity.Info;

import java.util.List;

public interface InfoDao {

    List<Info> getPayInfoList();

    List<Info> getFreeInfoList(int infoTypeId);

    Info getInfoById(int id);

    List<Info> getAllInfoList(Info info);

    void saveInfo(Info info);

    List<Info> getAllInfoListed(Info info);

    int deleteInfo(Info info);

    int updateInfo(Info info);

    int updatePayInfo(Info info);
}
