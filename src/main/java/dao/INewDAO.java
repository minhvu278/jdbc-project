package dao;

import model.NewsModel;

import java.util.List;

public interface INewDAO extends GenericDAO<NewsModel>{
    List<NewsModel> findByCategoryId(Long categoryId);
    Long save(NewsModel newsModel);
}
