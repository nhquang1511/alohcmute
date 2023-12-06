package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.PrivateMessage;
import entity.User;

public class PrivateMessageDaoImple implements IPrivateMessageDao{

	@Override
	public void insert(PrivateMessage message) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(PrivateMessage message) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int messageid) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PrivateMessage findById(int messageid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PrivateMessage> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<PrivateMessage> query = enma.createNamedQuery("PrivateMessage.findAll", PrivateMessage.class);

		return query.getResultList();
	}

	@Override
	public List<PrivateMessage> findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PrivateMessage> findAll(int page, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
