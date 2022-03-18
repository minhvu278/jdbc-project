package dao;

import model.NewsModel;

import java.util.List;

public interface INewDAO extends GenericDAO<NewsModel>{
    NewsModel findOne(Long id);
    List<NewsModel> findByCategoryId(Long catId);
    Long save(NewsModel newsModel);
}