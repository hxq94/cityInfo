package com.java1234.service;

import com.java1234.entity.Info;

import java.util.List;

public interface InfoService {

    /**
     * 缴费信息列表
     * @return
     */
	List<Info> getPayInfoList();

    /**
     * 获取免费信息列表
     * @return
     */
    List<Info> getFreeInfoList(int infoTypeId);

    /**
     * 根据信息Id获取详细信息
     * @param id
     * @return
     */
    Info getInfoById(int id);

    /**
     * 根据查询条件得到所有的信息
     * @param info
     * @return
     */
    List<Info> getAllInfoList(Info info);

    /**
     * 发布信息
     * @param info
     */
    void saveInfo(Info info);

    List<Info> getAllInfoListed(Info info);

     int deleteInfo(Info info);

    int updateInfo(Info info);

    int updatePayInfo(Info info);
}
