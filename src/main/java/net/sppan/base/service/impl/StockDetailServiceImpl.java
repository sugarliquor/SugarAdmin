package net.sppan.base.service.impl;


import net.sppan.base.dao.IStockDetailDao;
import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.StockDetail;
import net.sppan.base.service.IStockDetailService;
import net.sppan.base.service.support.impl.BaseServiceImpl;

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
public class StockDetailServiceImpl extends BaseServiceImpl<StockDetail, Integer> implements IStockDetailService {

	@Autowired
	private IStockDetailDao stockDetailDao;
	
	@Override
	public IBaseDao<StockDetail, Integer> getBaseDao() {
		return this.stockDetailDao;
	}

	@Override
	public void saveOrUpdate(StockDetail stock) {
		if(stock.getId() != null){
//			Order dbOrder = find(order.getId());
//			stock.setUpdateTime(new Date());
			update(stock);
		}else{
//			stock.setUpdateTime(new Date());
//			stock.setYn(0);
			save(stock);
		}
	}
	
	@Override
	public Page<StockDetail> findAllByLike(int pId, PageRequest pageRequest) {
		Page<StockDetail> pageStock = stockDetailDao.searchAll(pageRequest,pId);
		return pageStock;
	}

}
