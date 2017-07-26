package org.fkit.service;

import java.util.List;


import org.fkit.domain.Collect;

public interface CollectService {

	Collect findCollect(int book_id_);

	Collect saveCollect(int book_id_);

	Collect addCollect(int book_id_);

	List<Collect> getAll();

	void clearCollect();

	Collect removeCollect(int book_id_);

	Collect reduceCollect(int book_id_);

	void addCollect();

}
