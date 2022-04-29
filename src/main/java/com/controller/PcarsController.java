package com.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Pcars;
import com.service.PcarsService;
import com.entity.Users;
import com.entity.Cate;
import com.service.UsersService;
import com.service.CateService;
import com.util.PageHelper;
//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/pcars" , produces = "text/plain;charset=utf-8")
public class PcarsController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private PcarsService pcarsService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private CateService cateService;

	// 准备添加数据
	@RequestMapping("createPcars.action")
	public String createPcars() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/addpcars";
	}
	// 添加数据
	@RequestMapping("addPcars.action")
	public String addPcars(Pcars pcars) {
		pcars.setUsersid("");
		this.pcarsService.insertPcars(pcars);
		return "redirect:/pcars/createPcars.action";
	}

	// 通过主键删除数据
	@RequestMapping("deletePcars.action")
	public String deletePcars(String id) {
		this.pcarsService.deletePcars(id);
		return "redirect:/pcars/getAllPcars.action";
	}

	// 批量删除数据
	@RequestMapping("deletePcarsByIds.action")
	public String deletePcarsByIds() {
		String[] ids = this.getRequest().getParameterValues("pcarsid");
		if (ids != null) {
			for (String pcarsid : ids) {
				this.pcarsService.deletePcars(pcarsid);
			}
		}
		return "redirect:/pcars/getAllPcars.action";
	}

	// 更新数据
	@RequestMapping("updatePcars.action")
	public String updatePcars(Pcars pcars) {
		this.pcarsService.updatePcars(pcars);
		return "redirect:/pcars/getAllPcars.action";
	}

	// 显示全部数据
	@RequestMapping("getAllPcars.action")
	public String getAllPcars(String number) {
		List<Pcars> pcarsList = this.pcarsService.getAllPcars();
		PageHelper.getUserPage(pcarsList, "pcars", "getAllPcars", 10, number, this.getRequest());
		return "admin/listpcars";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryPcarsByCond.action")
	public String queryPcarsByCond(String cond, String name, String number) {
		Pcars pcars = new Pcars();
		if(cond != null){
			if ("usersid".equals(cond)) {
				pcars.setUsersid(name);
			}
			if ("carsno".equals(cond)) {
				pcars.setCarsno(name);
			}
			if ("cateid".equals(cond)) {
				pcars.setCateid(name);
			}
			if ("workdate".equals(cond)) {
				pcars.setWorkdate(name);
			}
			if ("youhao".equals(cond)) {
				pcars.setYouhao(name);
			}
			if ("pailiang".equals(cond)) {
				pcars.setPailiang(name);
			}
			if ("color".equals(cond)) {
				pcars.setColor(name);
			}
			if ("image".equals(cond)) {
				pcars.setImage(name);
			}
			if ("contents".equals(cond)) {
				pcars.setContents(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.pcarsService.getPcarsByLike(pcars), "pcars", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querypcars";
	}

	// 按主键查询数据
	@RequestMapping("getPcarsById.action")
	public String getPcarsById(String id) {
		Pcars pcars = this.pcarsService.getPcarsById(id);
		this.getRequest().setAttribute("pcars", pcars);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		return "admin/editpcars";
	}


}
