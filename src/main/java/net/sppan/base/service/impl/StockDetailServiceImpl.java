package net.sppan.base.service.impl;


import net.sppan.base.dao.IStockDetailDao;
import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Stock;
import net.sppan.base.entity.StockDetail;
import net.sppan.base.service.IStockDetailService;
import net.sppan.base.service.IStockService;
import net.sppan.base.service.support.impl.BaseServiceImpl;

import java.util.List;

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
	
	@Autowired
	private IStockService iStockService;
	
	@Override
	public IBaseDao<StockDetail, Integer> getBaseDao() {
		return this.stockDetailDao;
	}

	@Override
	public void saveOrUpdate(StockDetail stockDetail) {
		if(stockDetail.getId() != null){
			StockDetail stockFind = find(stockDetail.getId());
			//出货数量变更
			int a = Integer.parseInt(stockDetail.getShippQuantity())-Integer.parseInt(stockFind.getShippQuantity());
			//退回数量变更
			int b = Integer.parseInt(stockDetail.getReturnQuantity())-Integer.parseInt(stockFind.getReturnQuantity());
			//总出货数量
			int c = a-b;
			System.out.println(a);
			System.out.println(b);
			System.out.println(c);
			Stock stock = iStockService.find(stockDetail.getpId());
			stock.setInventoryQuantity(String.valueOf(Integer.parseInt(stock.getInventoryQuantity())-c));
			update(stockDetail);
			iStockService.update(stock);
//			stock.setUpdateTime(new Date());
		}else{
			save(stockDetail);
			//更新存货管理表
			Stock stock = iStockService.find(stockDetail.getpId());
			stock.setInventoryQuantity(String.valueOf(Integer.parseInt(stock.getInventoryQuantity())-Integer.parseInt(stockDetail.getShippQuantity())+Integer.parseInt(stockDetail.getReturnQuantity())));
			iStockService.update(stock);
			
		}
	}
	
	@Override
	public Page<StockDetail> findAllByLike(int pId, PageRequest pageRequest) {
		Page<StockDetail> pageStock = stockDetailDao.searchAll(pageRequest,pId);
		return pageStock;
	}

	@Override
	public List<StockDetail> findAllByPid(int pId) {
		List<StockDetail> listStock = stockDetailDao.searchAllByPid(pId);
		return listStock;
	}

	@Override
	public void deleteStockDetail(Integer id) {
		StockDetail stockFind = find(id);
		//出货数量变更
		int a = Integer.parseInt(stockFind.getShippQuantity());
		//退回数量变更
		int b = Integer.parseInt(stockFind.getReturnQuantity());
		//删除数量变更=加出货，减存货
		int c = a-b;
		Stock stock = iStockService.find(stockFind.getpId());
		int d = Integer.parseInt(stock.getInventoryQuantity())+c;
		stock.setInventoryQuantity(String.valueOf(d));
		iStockService.update(stock);
		delete(id);
	}

}
