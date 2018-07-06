package com.java1234.service.impl;

import com.java1234.dao.InfoTypeDao;
import com.java1234.entity.InfoType;
import com.java1234.service.InfoTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("infoTypeService")
public class InfoTypeServiceImpl implements InfoTypeService {

    @Resource
    private InfoTypeDao infoTypeDao;

    @Override
    public List<InfoType> getInfoTypeList() {
        return infoTypeDao.getInfoTypeList();
    }
}
