package admin;

import model.NewsModel;
import service.ICategoryService;
import service.INewsService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin"})
public class HomeController extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Inject
    private INewsService newsService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String title = "Bai viet 4";
//        String content = "Bai viet 4";
//        Long categoryId = 1L;
//
//        NewsModel newsModel = new NewsModel();
//        newsModel.setTitle(title);
//        newsModel.setContent(content);
//        newsModel.setCatId(categoryId);
//        newsService.save(newsModel);
//
//        req.setAttribute("categories", categoryService.findAll());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/home.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
