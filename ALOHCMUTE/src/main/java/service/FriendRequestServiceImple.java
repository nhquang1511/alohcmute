package service;

import java.util.ArrayList;
import java.util.List;

import DAO.FriendRequestDaoImple;
import DAO.IFriendRequestDao;
import entity.FriendRequest;

public class FriendRequestServiceImple implements IFriendRequestService{
	IFriendRequestDao dao = new FriendRequestDaoImple();
	@Override
	public List<FriendRequest> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	@Override
	public void update(FriendRequest fr) {
		// TODO Auto-generated method stub
		dao.update(fr);
	}

}
