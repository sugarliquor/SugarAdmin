package net.sppan.base.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import net.sppan.base.entity.PurStock;
import net.sppan.base.service.support.IBaseService;

/**
 * <p>
 * 开单服务类
 * </p>
 *
 * @author SPPan
 * @since 2019-1-24
 */
public interface IPurStockService extends IBaseService<PurStock, Integer> {

	/**
	 * 增加或者修改用户
	 * @param order
	 */
	void saveOrUpdate(PurStock stock);

	/**
	 * 根据关键字获取分页
	 * @param searchText
	 * @param pageRequest
	 * @return
	 */
	Page<PurStock> findAllByLike(String searchText, PageRequest pageRequest);

}
