package DAO;

import java.util.List;

import entity.PrivateMessage;

public interface IPrivateMessageDao {
	void insert(PrivateMessage message);
	void update(PrivateMessage message);
	void delete(int messageid) throws Exception;
	PrivateMessage findById (int messageid);
	List<PrivateMessage>findAll();
	List<PrivateMessage>findByUsername(String username);
	List<PrivateMessage>findAll(int page,int pagesize);
	int count();
}
