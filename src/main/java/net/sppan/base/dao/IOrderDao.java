package net.sppan.base.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Order;

@Repository
public interface IOrderDao extends IBaseDao<Order, Integer> {

//	Order findByUserName(String username);


	@Query(value="select o from Order o  where o.orderNo like %:nn% or o.address like %:nn%"
			+ " or o.contactNumber like %:nn% or o.introducer like %:nn% or o.installer like %:nn% "
			+ " or o.frontMoney like %:nn% or o.total like %:nn% or o.singlePerson like %:nn% ")
	Page<Order> searchAll(Pageable pageable,@Param("nn") String searchText);

}
