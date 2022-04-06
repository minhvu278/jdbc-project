package dao.impl;

import dao.IUserDAO;
import mapper.UserMapper;
import model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserDAO> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
        sql.append("INNER JOIN role as r ON r.id  = u.role_id");
        sql.append("WHERE username = ? AND password = ? AND status = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
        return users.isEmpty() ? null : users.get(0);
    }
}
