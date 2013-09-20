package com.hannah.web.server.serviceimpl;

import java.util.List;
import java.util.Map;

import com.hannah.web.common.service.IBaseService;
import com.hannah.web.server.dao.IBaseDao;

public class BaseServiceImpl implements IBaseService {

	protected IBaseDao baseDao;

	public IBaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(IBaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public void insert(Object obj) {
		baseDao.insert(obj);
	}

	public void insert(List list) {
		baseDao.insert(list);
	}

	public int delete(Object obj) {
		return baseDao.delete(obj);
	}

	public void delete(List list) {
		baseDao.delete(list);
	}

	public Object selectObject(Object obj) {
	  List list = select(obj);
	  return list.size() == 0 ? null : list.get(0);
	}

	public List select(Object obj) {
		return baseDao.select(obj);
	}

	public int selectCount(Object obj) {
		return baseDao.selectCount(obj);
	}

	public List selectPagingData(Object obj) {
		return baseDao.selectPagingData(obj);
	}

	public List selectPagingData(Object obj, int startRow, int count) {
		Map map = (Map) obj;
		map.put("startRow", startRow);
		map.put("count", count);
		return baseDao.selectPagingData(map);
	}

	public int update(Object obj) {
		return baseDao.update(obj);
	}

	public void update(List list) {
		baseDao.update(list);
	}

	public void save(Object obj) {
		delete(obj);
		insert(obj);
	}

	public void save(List list) {
		delete(list);
		insert(list);
	}

	public void save(List insertList, List deleteList, List updateList) {
		insert(insertList);
		delete(deleteList);
		update(updateList);
	}

}
