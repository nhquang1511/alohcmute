package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.Friendship;
import entity.User;

public class FriendshipDaoImple implements IFriendshipDao{

	@Override
	public List<Friendship> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Friendship> query = enma.createNamedQuery("Friendship.findAll", Friendship.class);

		return query.getResultList();
	}

	@Override
	public Friendship findById(int fsid) {
		EntityManager enma = JPAConfig.getEntityManager();

		Friendship f = enma.find(Friendship.class, fsid);

		return f;
	}

	@Override
	public void insert(Friendship fs) {
		// TODO Auto-generated method stub
		EntityManager enma = JPAConfig.getEntityManager();

		EntityTransaction trans = enma.getTransaction(); // chức năng insert có

		try {

			trans.begin();

			enma.persist(fs);// persist chính là insert đối tượng category vô

			trans.commit();// xác nhận thành công

		} catch (Exception e) {

			e.printStackTrace();

			trans.rollback();

			throw e;

		} finally {

			enma.close();

		}
	}
	
}
