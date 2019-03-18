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
import net.sppan.base.entity.StockDetail;
import net.sppan.base.service.IStockDetailService;

@Controller
@RequestMapping("/admin/stockDetail")
public class StockDetailController extends BaseController {

	@Autowired
	private IStockDetailService stockDetailService;

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "admin/stockDetail/index";
	}

	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<StockDetail> list(
			@RequestParam(value="pId",required=false) int pId
			) {
		
		Page<StockDetail> page = stockDetailService.findAllByLike(pId, getPageRequest());
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		return "admin/stockDetail/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(StockDetail stockDetail,ModelMap map){
		try {
			stockDetailService.saveOrUpdate(stockDetail);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		StockDetail stockDetail = stockDetailService.find(id);
		map.put("stockDetail", stockDetail);
		return "admin/stockDetail/form";
	}
	
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			stockDetailService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
}
