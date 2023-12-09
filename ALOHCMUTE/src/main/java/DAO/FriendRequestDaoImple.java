package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
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

	@Override
	public void update(FriendRequest fr) {
		// TODO Auto-generated method stub
		EntityManager enma = JPAConfig.getEntityManager();

		EntityTransaction trans = enma.getTransaction();

		try {

			trans.begin();

			enma.merge(fr); // merger là update

			trans.commit();

		} catch (Exception e) {

			e.printStackTrace();

			trans.rollback();

			throw e;

		} finally {

			enma.close();

		}
	}

}
