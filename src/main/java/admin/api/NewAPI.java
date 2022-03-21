package admin.api;

import model.NewsModel;
import org.codehaus.jackson.map.ObjectMapper;
import service.INewsService;
import utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-new"})
public class NewAPI extends HttpServlet {

    @Inject
    private INewsService newsService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        NewsModel newsModel = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
        newsModel = newsService.save(newsModel);

        mapper.writeValue(resp.getOutputStream(), newsModel);
    }

//    @Override
//    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//    }
}

