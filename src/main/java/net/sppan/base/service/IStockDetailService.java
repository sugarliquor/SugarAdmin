package net.sppan.base.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import net.sppan.base.entity.StockDetail;
import net.sppan.base.service.support.IBaseService;

/**
 * <p>
 * 开单服务类
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
public interface IStockDetailService extends IBaseService<StockDetail, Integer> {

	/**
	 * 增加或者修改用户
	 * @param order
	 */
	void saveOrUpdate(StockDetail stock);

	/**
	 * 根据关键字获取分页
	 * @param searchText
	 * @param pageRequest
	 * @return
	 */
	Page<StockDetail> findAllByLike(int pId, PageRequest pageRequest);
	
	/**
	 * 根据关键字获取分页
	 * @param searchText
	 * @param pageRequest
	 * @return
	 */
	List<StockDetail> findAllByPid(int pId);

	/**
	 * 删除存货明细
	 * @param id
	 */
	void deleteStockDetail(Integer id);
	
}
