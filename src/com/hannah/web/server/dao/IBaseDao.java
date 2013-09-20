package com.hannah.web.server.dao;

import java.util.List;

public interface IBaseDao {

	void insert(Object obj);

	void insert(List list);

	int delete(Object obj);

	void delete(List list);

	List select(Object obj);

	int selectCount(Object obj);

	List selectPagingData(Object obj);

	int update(Object obj);

	void update(List list);

}
