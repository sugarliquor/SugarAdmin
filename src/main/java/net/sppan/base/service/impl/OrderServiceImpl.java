package net.sppan.base.service.impl;


import net.sppan.base.dao.IOrderDao;
import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Order;
import net.sppan.base.service.IOrderService;
import net.sppan.base.service.support.impl.BaseServiceImpl;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 开单表  服务实现类
 * </p>
 *
 * @author SPPan
 * @since 2016-12-28
 */
@Service
public class OrderServiceImpl extends BaseServiceImpl<Order, Integer> implements IOrderService {

	@Autowired
	private IOrderDao orderDao;
	
	@Override
	public IBaseDao<Order, Integer> getBaseDao() {
		return this.orderDao;
	}

	@Override
	public void saveOrUpdate(Order order) {
		if(order.getId() != null){
//			Order dbOrder = find(order.getId());
			order.setUpdateTime(new Date());
			update(order);
		}else{
			order.setSingleTime(new Date());
			order.setUpdateTime(new Date());
			order.setYn(0);
			save(order);
		}
	}
	
	@Override
	public Page<Order> findAllByLike(String searchText, PageRequest pageRequest) {
		if(StringUtils.isBlank(searchText)){
			searchText = "";
		}
		return orderDao.searchAll(pageRequest,searchText);
	}

}
