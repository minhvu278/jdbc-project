package dao;

import model.NewsModel;
import paging.Pageble;

import java.util.List;

public interface INewDAO extends GenericDAO<NewsModel>{
    NewsModel findOne(Long id);
    List<NewsModel> findByCategoryId(Long categoryId);
    Long save(NewsModel newsModel);
    void update(NewsModel updateNew);
    void delete(long id);
    List<NewsModel> findAll(Pageble pageble);
    int getTotalItem();
}
