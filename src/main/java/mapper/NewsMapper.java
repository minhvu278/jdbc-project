package mapper;

import model.NewsModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NewsMapper implements RowMapper<NewsModel> {
    @Override
    public NewsModel mapRow(ResultSet resultSet) {
        try {
            NewsModel news = new NewsModel();
            news.setId(resultSet.getLong("id"));
            news.setTitle(resultSet.getString("title"));
            news.setThumbnail(resultSet.getString("thumbnail"));
            news.setShortDescription(resultSet.getString("short_description"));
            news.setContent(resultSet.getString("content"));
            news.setCategoryId(resultSet.getLong("categoryid"));
            news.setCreatedAt(resultSet.getTimestamp("created_at"));
            if(resultSet.getTimestamp("updated_at") != null) {
                news.setUpdatedAt(resultSet.getTimestamp("updated_at"));
            }
            return news;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
