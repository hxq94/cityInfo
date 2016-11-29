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
public class InfoTypeController {

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

	@RequestMapping("/index")
	public String getInfoTypelist(final Model model){

		//准备信息类别
		List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
		model.addAttribute("infoTypeList",infoTypeList);
		//准备缴费信息
		List<Info> payInfoList = infoService.getPayInfoList();
		model.addAttribute("payInfoList",payInfoList);
		//准备免费信息
		List allFreeInfoList = new ArrayList();
		if(infoTypeList!=null && infoTypeList.size()!=0){
			infoTypeList.parallelStream().forEach(infoType -> {
				List<Info> infoFreeList = infoService.getFreeInfoList(infoType.getId());
				allFreeInfoList.add(infoFreeList);
			});
		}
		model.addAttribute("allFreeInfoList",allFreeInfoList);

		model.addAttribute("mainPage","");

		return "/view/indexTemp";
	}

}
