package net.sppan.base.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import net.sppan.base.dao.support.IBaseDao;
import net.sppan.base.entity.StockDetail;

@Repository
public interface IStockDetailDao extends IBaseDao<StockDetail, Integer> {

//	@Query(nativeQuery = true,value = "select o from tb_stock_detail o  where o.p_id = :pId")
	@Query(value="select o from StockDetail o  where o.pId = :pId ")
	Page<StockDetail> searchAll(Pageable pageable,@Param("pId") int pId);

}
