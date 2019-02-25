package net.sppan.base.controller.admin.system;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sppan.base.common.JsonResult;
import net.sppan.base.controller.BaseController;
import net.sppan.base.entity.PurStock;
import net.sppan.base.service.IPurStockService;

@Controller
@RequestMapping("/admin/purStock")
public class PurStockController extends BaseController {

	@Autowired
	private IPurStockService purStockService;

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "admin/purStock/index";
	}

	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<PurStock> list(
			@RequestParam(value="searchText",required=false) String searchText
			) {
		
		Page<PurStock> page = purStockService.findAllByLike(searchText, getPageRequest());
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		return "admin/purStock/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(PurStock stock,ModelMap map){
		try {
			purStockService.saveOrUpdate(stock);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		PurStock purStock = purStockService.find(id);
		map.put("purStock", purStock);
		return "admin/purStock/form";
	}
	
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			purStockService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
}
