package net.sppan.base.service.impl;


import net.sppan.base.dao.IPurStockDao;
import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.PurStock;
import net.sppan.base.service.IPurStockService;
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
public class PurStockServiceImpl extends BaseServiceImpl<PurStock, Integer> implements IPurStockService {

	@Autowired
	private IPurStockDao purStockDao;
	
	@Override
	public IBaseDao<PurStock, Integer> getBaseDao() {
		return this.purStockDao;
	}

	@Override
	public void saveOrUpdate(PurStock stock) {
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
	public Page<PurStock> findAllByLike(String searchText, PageRequest pageRequest) {
		if(StringUtils.isBlank(searchText)){
			searchText = "";
		}
		return purStockDao.searchAll(pageRequest,searchText);
	}

}
