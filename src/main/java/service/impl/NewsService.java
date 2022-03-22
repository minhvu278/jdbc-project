package service.impl;

import dao.INewDAO;
import model.NewsModel;
import service.INewsService;

import javax.inject.Inject;
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
        Long newId = newDao.save(newsModel);
        return newDao.findOne(newId);
    }

    @Override
    public NewsModel update(NewsModel updateNew) {
        NewsModel oldNew = newDao.findOne(updateNew.getId());
        updateNew.setCreatedAt(oldNew.getCreatedAt());
        updateNew.setUpdatedAt(oldNew.getUpdatedAt());
        newDao.update(updateNew);
        return newDao.findOne(updateNew.getId());
    }
}
