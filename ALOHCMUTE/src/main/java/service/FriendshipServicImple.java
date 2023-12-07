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

}
