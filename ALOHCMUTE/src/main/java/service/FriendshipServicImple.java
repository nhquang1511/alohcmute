package service;

import java.util.List;

import DAO.FriendshipDaoImple;
import DAO.IFriendshipDao;

import entity.Friendship;

public class FriendshipServicImple implements IFriendshipService{
	IFriendshipDao friendshipdao = new FriendshipDaoImple();
	
	@Override
	public List<Friendship> findAll() {
		// TODO Auto-generated method stub
		return friendshipdao.findAll();
	}

	@Override
	public Friendship findById(int fsid) {
		// TODO Auto-generated method stub
		return friendshipdao.findById(fsid);
	}

	@Override
	public void insert(Friendship fs) {
		// TODO Auto-generated method stub
		friendshipdao.insert(fs);
	}

}
