package net.sppan.base.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.Stock;

@Repository
public interface IStockDao extends IBaseDao<Stock, Integer> {

	@Query(value="select o from Stock o  where o.incomManu like %:nn% or o.nameSpeci like %:nn%"
			+ " or o.batchNumber like %:nn% "
			+ " or o.remarks like %:nn% ")
	Page<Stock> searchAll(Pageable pageable,@Param("nn") String searchText);

}
