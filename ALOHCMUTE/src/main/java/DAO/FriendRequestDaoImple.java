package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.FriendRequest;

public class FriendRequestDaoImple implements IFriendRequestDao{

	@Override
	public List<FriendRequest> findAll() {
		// TODO Auto-generated method stub
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<FriendRequest> query = enma.createNamedQuery("FriendRequest.findAll", FriendRequest.class);

		return query.getResultList();
	}

}
