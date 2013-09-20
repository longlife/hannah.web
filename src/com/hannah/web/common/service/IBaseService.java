package com.hannah.web.common.service;

import java.util.List;

public interface IBaseService {

	void insert(Object obj);

	void insert(List list);

	int delete(Object obj);

	void delete(List list);

	Object selectObject(Object obj);

	List select(Object obj);

	int selectCount(Object obj);

	List selectPagingData(Object obj);

	List selectPagingData(Object obj, int startRow, int count);

	int update(Object obj);

	void update(List list);

	void save(Object obj);

	void save(List list);

	void save(List insertList, List deleteList, List updateList);

}
