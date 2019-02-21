package net.sppan.base.controller.admin.system;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
//		SimpleSpecificationBuilder<User> builder = new SimpleSpecificationBuilder<User>();
//		String searchText = request.getParameter("searchText");
//		if(StringUtils.isNotBlank(searchText)){
//			builder.add("nickName", Operator.likeAll.name(), searchText);
//		}
		
		Page<Order> page = orderService.findAllByLike(searchText, getPageRequest());
		return page;
	}
	
//	@RequestMapping(value = "/add", method = RequestMethod.GET)
//	public String add(ModelMap map) {
//		return "admin/user/form";
//	}
//
//	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
//	public String edit(@PathVariable Integer id,ModelMap map) {
//		Order user = orderService.find(id);
//		map.put("user", user);
//		return "admin/user/form";
//	}
//	
//	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
//	@ResponseBody
//	public JsonResult edit(User user,ModelMap map){
//		try {
//			orderService.saveOrUpdate(user);
//		} catch (Exception e) {
//			return JsonResult.failure(e.getMessage());
//		}
//		return JsonResult.success();
//	}
//	
//	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
//	@ResponseBody
//	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
//		try {
//			orderService.delete(id);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return JsonResult.failure(e.getMessage());
//		}
//		return JsonResult.success();
//	}
//	
//	@RequestMapping(value = "/grant/{id}", method = RequestMethod.GET)
//	public String grant(@PathVariable Integer id, ModelMap map) {
//		Order user = orderService.find(id);
//		map.put("user", user);
//		
//		Set<Role> set = user.getRoles();
//		List<Integer> roleIds = new ArrayList<Integer>();
//		for (Role role : set) {
//			roleIds.add(role.getId());
//		}
//		map.put("roleIds", roleIds);
//		
//		List<Role> roles = roleService.findAll();
//		map.put("roles", roles);
//		return "admin/user/grant";
//	}
//	
//	@ResponseBody
//	@RequestMapping(value = "/grant/{id}", method = RequestMethod.POST)
//	public JsonResult grant(@PathVariable Integer id,String[] roleIds, ModelMap map) {
//		try {
//			orderService.grant(id,roleIds);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return JsonResult.failure(e.getMessage());
//		}
//		return JsonResult.success();
//	}
//	
//	@RequestMapping(value = "/updatePwd", method = RequestMethod.GET)
//	public String updatePwd() {
//		return "admin/user/updatePwd";
//	}
//	
//	@RequestMapping(value = "/updatePwd", method = RequestMethod.POST)
//	@ResponseBody
//	public JsonResult updatePwd(String oldPassword, String password1, String password2) {
//		try {
//			Subject subject = SecurityUtils.getSubject();
//			Object principal = subject.getPrincipal();
//			if(principal== null){
//				return JsonResult.failure("您尚未登录");
//			}
//			orderService.updatePwd((User)principal, oldPassword, password1, password2);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return JsonResult.failure(e.getMessage());
//		}
//		return JsonResult.success();
//	}
}
