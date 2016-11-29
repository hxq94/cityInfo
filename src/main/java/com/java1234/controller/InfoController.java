package com.java1234.controller;

import com.java1234.entity.Info;
import com.java1234.entity.InfoType;
import com.java1234.service.InfoService;
import com.java1234.service.InfoTypeService;
import com.java1234.util.ResponseUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class InfoController {

	/**
	 * 信息类别Service
	 */
	@Resource
	private InfoTypeService infoTypeService;

	/**
	 * 信息Service
	 */
	@Resource
	private InfoService infoService;

	/**
	 * 根据信息Id获取详细信息
	 * @param model
	 * @param id
	 * @return
	 */
    @RequestMapping("/info/show-details-info")
    public String getInfoById(final Model model,int id){

        Info info = infoService.getInfoById(id);
        model.addAttribute("info",info);
		model.addAttribute("mainPage","/pages/show/detailsInfo.jsp");

        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList",infoTypeList);
        return "/view/indexTemp";
    }

	/**
	 * 根据条件搜索信息
	 * @param model
	 * @param info
	 * @return
	 */
    @RequestMapping(value = "/info/get-search-info",method = RequestMethod.GET)
    public String getInfoListByCondition(final Model model,Info info){

        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList",infoTypeList);

        List<Info> searchInfoList = infoService.getAllInfoList(info);
		model.addAttribute("searchInfoList",searchInfoList);
		model.addAttribute("info",info);
		model.addAttribute("mainPage","/pages/show/searchInfo.jsp");
        return "/view/indexTemp";
    }

	/**
	 * 准备发布信息
	 * @param model
	 * @return
	 */
	@RequestMapping("/pre/add-info")
	public String preAddInfo(Model model){

		//准备信息类别
		List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
		model.addAttribute("infoTypeList",infoTypeList);

		model.addAttribute("mainPage","/pages/add/addInfo.jsp");
		return "/view/indexTemp";
	}

	/**
	 * 保存发布信息
	 * @param model
	 * @param info
	 * @return
	 */
	@RequestMapping(value = "/save/add-info",method = RequestMethod.POST)
	public String addInfo(Model model,Info info){

		//准备信息类别
		List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
		model.addAttribute("infoTypeList",infoTypeList);
		model.addAttribute("info",info);
		info.setInfoDate(new Date());
		info.setPayfor(0);
		info.setState(0);
		infoService.saveInfo(info);
		model.addAttribute("mainPage","/pages/add/addInfoSuccess.jsp");
		return "/view/indexTemp";
	}

}
