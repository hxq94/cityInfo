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
import java.util.List;

@Controller
public class InfoBackController {

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
     * 后台按条件查询信息
     *
     * @param model
     * @param info
     * @return
     */
    @RequestMapping(value = "/info/get-info-list", method = RequestMethod.POST)
    public String getInfoList(Model model, Info info) {

        List<Info> searchInfoList = infoService.getAllInfoListed(info);
        model.addAttribute("searchInfoList", searchInfoList);

        model.addAttribute("mainPage", "/pages/admin/info/searchInfo.jsp");

        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList", infoTypeList);
        return "/pages/admin/view/adminTemp";
    }

    /**
     * 删除
     *
     * @param model
     * @param info
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/info/delete-info", method = RequestMethod.POST)
    public String deleteInfo(Model model, Info info, HttpServletResponse response) throws Exception {
        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList", infoTypeList);

        int resultNum = infoService.deleteInfo(info);
        boolean delFlag;
        if (resultNum == 1) {
            delFlag = true;
        } else {
            delFlag = false;
        }
        ResponseUtil.write(delFlag, response);
        return null;
    }

    /**
     * 审核
     *
     * @param model
     * @param info
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/info/check-info", method = RequestMethod.POST)
    public String checkInfo(Model model, Info info, HttpServletResponse response) throws Exception {
        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList", infoTypeList);

        int resultNum = infoService.updateInfo(info);
        boolean delFlag;
        if (resultNum == 1) {
            delFlag = true;
        } else {
            delFlag = false;
        }
        ResponseUtil.write(delFlag, response);
        return null;
    }

    /**
     * 付费
     *
     * @param model
     * @param info
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/info/payfor-info", method = RequestMethod.POST)
    public String payforInfo(Model model, Info info, HttpServletResponse response) throws Exception {
        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList", infoTypeList);

        int resultNum = infoService.updatePayInfo(info);
        boolean delFlag;
        if (resultNum == 1) {
            delFlag = true;
        } else {
            delFlag = false;
        }
        ResponseUtil.write(delFlag, response);
        return null;
    }

    /**
     * 进入审核、付费界面
     *
     * @param model
     * @param info
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/info/check-info")
    public String checkInfo(Model model, Info info) throws Exception {
        //准备信息类别
        List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
        model.addAttribute("infoTypeList", infoTypeList);

        //准备信息数据
        info = infoService.getInfoById(info.getId());
        model.addAttribute("info", info);
        model.addAttribute("mainPage", "/pages/admin/info/checkInfo.jsp");
        return "/pages/admin/view/adminTemp";
    }

}
