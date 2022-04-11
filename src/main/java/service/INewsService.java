package service;

import model.NewsModel;
import paging.Pageble;

import java.util.List;

public interface INewsService {
    List<NewsModel> findByCategoryId(Long categoryId);
    NewsModel save(NewsModel newsModel);
    NewsModel update(NewsModel updateNew);
    void delete(long[] ids);
    List<NewsModel> findAll(Pageble pageble);
    int getTotalItem();
}
