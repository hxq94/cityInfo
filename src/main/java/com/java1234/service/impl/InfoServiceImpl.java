package com.java1234.service.impl;

import com.java1234.dao.InfoDao;
import com.java1234.entity.Info;
import com.java1234.service.InfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/11/24 0024.
 */
@Service("infoService")
public class InfoServiceImpl implements InfoService {

    @Resource
    private InfoDao infoDao;

    @Override
    public List<Info> getPayInfoList() {
        return infoDao.getPayInfoList();
    }

    @Override
    public List<Info> getFreeInfoList(int infoTypeId) {
        return infoDao.getFreeInfoList(infoTypeId);
    }

    @Override
    public Info getInfoById(int id) {
        return infoDao.getInfoById(id);
    }

    @Override
    public List<Info> getAllInfoList(Info info) {
        return infoDao.getAllInfoList(info);
    }

    @Override
    public void saveInfo(Info info) {
        infoDao.saveInfo(info);
    }

    @Override
    public List<Info> getAllInfoListed(Info info) {
        return infoDao.getAllInfoListed(info);
    }

    @Override
    public int deleteInfo(Info info) {
        return infoDao.deleteInfo(info);
    }

    @Override
    public int updateInfo(Info info) {
        return infoDao.updateInfo(info);
    }

    @Override
    public int updatePayInfo(Info info) {
        return infoDao.updatePayInfo(info);
    }
}
