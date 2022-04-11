package dao.impl;

import dao.INewDAO;
import mapper.NewsMapper;
import model.NewsModel;
import paging.Pageble;

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
        String sql = "INSERT INTO news(title, thumbnail, short_description, created_at, content, categoryid) VALUES(?, ?, ?, ?, ?, ?)";
//        StringBuilder sql = new StringBuilder("INSERT INTO news(title, content, thumbnail, ");
//        sql.append("short_description, categoryid, created_at)");
//        sql.append("VALUES(?, ?, ?, ?, ?, ?)");
        return insert(sql, newsModel.getTitle(), newsModel.getThumbnail(),
                newsModel.getShortDescription(), newsModel.getCreatedAt(),
                newsModel.getContent(), newsModel.getCategoryId());
    }

    @Override
    public void update(NewsModel updateNew) {
        StringBuilder sql = new StringBuilder("UPDATE news SET (title = ?, content = ?, thumbnail = ?, )");
        sql.append("short_description = ?, categoryid = ?, created_at = ?, updated_at = ?");
        update(sql.toString(), updateNew.getTitle(), updateNew.getThumbnail(), updateNew.getContent(),
                updateNew.getShortDescription(), updateNew.getCategoryId(), updateNew.getCreatedAt(),
                updateNew.getUpdatedAt(), updateNew.getId());
    }

    @Override
    public void delete(long id) {
        String sql = "DELETE FROM news WHERE id = ?";
        update(sql, id);
    }

    @Override
    public List<NewsModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM news");
        if (pageble.getSorter() != null) {
            sql.append(" ORDER BY "+pageble.getSorter().getSortName()+ " "+pageble.getSorter().getSortBy()+"");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" LIMIT " +pageble.getOffset()+", "+pageble.getLimit()+"");
        }
        return query(sql.toString(), new NewsMapper());
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM news";
        return count(sql);
    }
}
