package mapper;

import model.NewsModel;
import model.RoleModel;
import model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel user = new UserModel();
            user.setId(resultSet.getLong("id"));
            user.setUserName(resultSet.getString("username"));
            user.setFullName(resultSet.getString("fullname"));
            user.setPassword(resultSet.getString("password"));
            user.setStatus(resultSet.getInt("status"));
            RoleModel role = new RoleModel();
            role.setCode(resultSet.getString("code"));
            role.setName(resultSet.getString("name"));
            user.setRole(role);
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
