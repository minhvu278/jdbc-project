package service.impl;

import dao.IUserDAO;
import model.UserModel;
import service.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
    }
}
