package dao;

import dao.impl.UserDAO;
import model.UserModel;

public interface IUserDAO extends GenericDAO<UserDAO>{
    UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}
