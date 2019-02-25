package net.sppan.base.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.PurStock;

@Repository
public interface IPurStockDao extends IBaseDao<PurStock, Integer> {

	@Query(value="select o from PurStock o  where o.shipper like %:nn% or o.incomManu like %:nn%"
			+ " or o.contactNumber like %:nn% or o.contacts like %:nn% or o.logisNumber like %:nn% "
			+ " or o.nameSpeci like %:nn% or o.remarks like %:nn% ")
	Page<PurStock> searchAll(Pageable pageable,@Param("nn") String searchText);

}
