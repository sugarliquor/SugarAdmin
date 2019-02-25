package net.sppan.base.service.impl;


import net.sppan.base.dao.IStockDao;
import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Stock;
import net.sppan.base.service.IStockService;
import net.sppan.base.service.support.impl.BaseServiceImpl;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 存货表  服务实现类
 * </p>
 *
 * @author SPPan
 * @since 2016-12-28
 */
@Service
public class StockServiceImpl extends BaseServiceImpl<Stock, Integer> implements IStockService {

	@Autowired
	private IStockDao stockDao;
	
	@Override
	public IBaseDao<Stock, Integer> getBaseDao() {
		return this.stockDao;
	}

	@Override
	public void saveOrUpdate(Stock stock) {
		if(stock.getId() != null){
//			Order dbOrder = find(order.getId());
			stock.setUpdateTime(new Date());
			update(stock);
		}else{
			stock.setUpdateTime(new Date());
			stock.setYn(0);
			save(stock);
		}
	}
	
	@Override
	public Page<Stock> findAllByLike(String searchText, PageRequest pageRequest) {
		if(StringUtils.isBlank(searchText)){
			searchText = "";
		}
		return stockDao.searchAll(pageRequest,searchText);
	}

}
