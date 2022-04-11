package service.impl;

import dao.INewDAO;
import model.NewsModel;
import paging.Pageble;
import service.INewsService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class NewsService implements INewsService {

    @Inject
    private INewDAO newDao;

    @Override
    public List<NewsModel> findByCategoryId(Long categoryId) {
        return newDao.findByCategoryId(categoryId);
    }

    @Override
    public NewsModel save(NewsModel newsModel) {
        newsModel.setCreatedAt(new Timestamp(System.currentTimeMillis()));
        Long newId = newDao.save(newsModel);
        return newDao.findOne(newId);
    }

    @Override
    public NewsModel update(NewsModel updateNew) {
        NewsModel oldNew = newDao.findOne(updateNew.getId());
        updateNew.setCreatedAt(oldNew.getCreatedAt());
        updateNew.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
        newDao.update(updateNew);
        return newDao.findOne(updateNew.getId());
    }

    @Override
    public void delete(long[] ids) {
        for (long id: ids) {
            newDao.delete(id);
        }
    }

    @Override
    public List<NewsModel> findAll(Pageble pageble) {
        return newDao.findAll(pageble);
    }

    @Override
    public int getTotalItem() {
        return newDao.getTotalItem();
    }
}
