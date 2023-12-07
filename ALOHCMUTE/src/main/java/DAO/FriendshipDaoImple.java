package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.Friendship;

public class FriendshipDaoImple implements IFriendshipDao{

	@Override
	public List<Friendship> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Friendship> query = enma.createNamedQuery("Friendship.findAll", Friendship.class);

		return query.getResultList();
	}
	
}
