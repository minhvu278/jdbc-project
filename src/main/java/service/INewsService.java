package service;

import model.NewsModel;

import java.util.List;

public interface INewsService {
    List<NewsModel> findByCategoryId(Long catId);
    NewsModel save(NewsModel newsModel);
}
