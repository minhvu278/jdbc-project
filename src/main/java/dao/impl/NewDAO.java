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
        return news.isEmpty() ? null : news.get(0) ;
    }

    @Override
    public List<NewsModel> findByCategoryId(Long catId) {
        String sql = "SELECT * FROM news WHERE cat_id = ?";
        return query(sql, new NewsMapper(), catId);
    }

    @Override
    public Long save(NewsModel newsModel) {
        String sql = "insert into news(title, content, cat_id) values(?, ?, ?)";
        return insert(sql, newsModel.getTitle(), newsModel.getContent(), newsModel.getCatId());
    }
}
