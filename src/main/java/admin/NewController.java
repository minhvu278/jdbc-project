package admin;

import constant.SystemConstant;
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

@WebServlet(urlPatterns = {"/admin-new-list"})
public class NewController extends HttpServlet {

    @Inject
    private INewsService newsService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NewsModel model = new NewsModel();
        model.setListResult(newsService.findAll());
        req.setAttribute(SystemConstant.MODEL, model);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/new/list.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
