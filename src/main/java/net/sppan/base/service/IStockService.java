package net.sppan.base.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import net.sppan.base.entity.Stock;
import net.sppan.base.service.support.IBaseService;

/**
 * <p>
 * 开单服务类
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
public interface IStockService extends IBaseService<Stock, Integer> {

	/**
	 * 增加或者修改用户
	 * @param order
	 */
	void saveOrUpdate(Stock stock);

	/**
	 * 根据关键字获取分页
	 * @param searchText
	 * @param pageRequest
	 * @return
	 */
	Page<Stock> findAllByLike(String searchText, PageRequest pageRequest);

	/**
	 * 根据id删除数据及明细
	 * @param id
	 */
	void deleteData(Integer id);

}
