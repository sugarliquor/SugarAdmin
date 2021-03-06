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
import net.sppan.base.entity.Order;
import net.sppan.base.service.IOrderService;

@Controller
@RequestMapping("/admin/order")
public class OrderController extends BaseController {

	@Autowired
	private IOrderService orderService;

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "admin/order/index";
	}

	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<Order> list(
			@RequestParam(value="searchText",required=false) String searchText
			) {
		
		Page<Order> page = orderService.findAllByLike(searchText, getPageRequest());
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		return "admin/order/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Order order,ModelMap map){
		try {
			orderService.saveOrUpdate(order);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Order order = orderService.find(id);
		map.put("order", order);
		return "admin/order/form";
	}
	
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			orderService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
}
