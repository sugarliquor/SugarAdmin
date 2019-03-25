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
import net.sppan.base.entity.Stock;
import net.sppan.base.service.IStockService;

@Controller
@RequestMapping("/admin/stock")
public class StockController extends BaseController {

	@Autowired
	private IStockService stockService;

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "admin/stock/index";
	}

	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<Stock> list(
			@RequestParam(value="searchText",required=false) String searchText
			) {
		
		Page<Stock> page = stockService.findAllByLike(searchText, getPageRequest());
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		return "admin/stock/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Stock stock,ModelMap map){
		try {
			stockService.saveOrUpdate(stock);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Stock stock = stockService.find(id);
		map.put("stock", stock);
		return "admin/stock/form";
	}
	
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			stockService.deleteData(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
}
