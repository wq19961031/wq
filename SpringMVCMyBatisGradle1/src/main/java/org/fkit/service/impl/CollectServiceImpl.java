package org.fkit.service.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.fkit.domain.Collect;
import org.fkit.mapper.CollectMapper;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service("collectService")
public class CollectServiceImpl implements CollectService{

	@Autowired
	private CollectMapper collectMapper;

	@Override
	public List<Collect> getAll() {
		// TODO Auto-generated method stub
		return collectMapper.findAll();
	}
	
	@Override
	public Collect findCollect(int book_id) {
		// TODO Auto-generated method stub
		return collectMapper.findWithId(book_id);
	}

	@Override
	public Collect saveCollect(int book_id) {
		// TODO Auto-generated method stub
		Collect collect = new Collect();
		collect.setBook_id(book_id);
		final int i = 1;
		collect.setCount(i);
		collectMapper.saveCollect(collect);
		return collect;

	}
	@Override
	public Collect addCollect(int book_id) {
		// TODO Auto-generated method stub
		Collect collect = collectMapper.findWithId(book_id);
		collectMapper.addCollect(collect);
		return collect;

	}

	@Override
	public Collect reduceCollect(int book_id) {
		// TODO Auto-generated method stub
		
		Collect collect = collectMapper.findWithId(book_id);
				if (collect.getCount() >= 1) {
					collectMapper.reduceCollect(collect);
				} else {
					Error e = null;
					throw new RuntimeErrorException(e);
				}
				return collect;
	}

	@Override
	public void clearCollect() {
		// TODO Auto-generated method stub
		collectMapper.clearCollect();
	}

	@Override
	public Collect removeCollect(int book_id) {
		// TODO Auto-generated method stub
		Collect collect = collectMapper.findWithId(book_id);
		collectMapper.removeCollect(collect);
		return collect;
	}

	@Override
	public void addCollect() {
		// TODO Auto-generated method stub
	
	}

	

}

