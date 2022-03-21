package dao.impl;

import dao.INewDAO;
import mapper.NewsMapper;
import model.NewsModel;

import java.util.List;

public class NewDAO extends AbstractDAO<NewsModel> implements INewDAO {

    @Override
    public NewsModel findOne(Long id) {
        String sql = "SELECT * FROM news WHERE id = ?";
        List<NewsModel> news = query(sql, new NewsMapper(), id);
        return news.isEmpty() ? null : news.get(0);
    }

    @Override
    public List<NewsModel> findByCategoryId(Long categoryId) {
        String sql = "SELECT * FROM news WHERE categoryid = ?";
        return query(sql, new NewsMapper(), categoryId);
    }

    @Override
    public Long save(NewsModel newsModel) {
        String sql = "INSERT INTO news(title, content, categoryid) VALUES(?, ?, ?)";
        return insert(sql, newsModel.getTitle(), newsModel.getContent(), newsModel.getCategoryId());
    }
}
