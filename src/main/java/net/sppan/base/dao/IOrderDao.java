package net.sppan.base.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Order;

@Repository
public interface IOrderDao extends IBaseDao<Order, Integer> {

//	Order findByUserName(String username);

	Page<Order> findAllByOrderNoContaining(String searchText, Pageable pageable);

}
