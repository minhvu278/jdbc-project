package admin;

import model.UserModel;
import service.ICategoryService;
import service.INewsService;
import service.IUserService;
import utils.FormUtil;
import utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin", "/login", "/logout"})
public class HomeController extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IUserService userService;

    @Inject
    private INewsService newsService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && action.equals("login")) {
            RequestDispatcher rd = req.getRequestDispatcher("/views/login.jsp");
            rd.forward(req, resp);
        } else if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(req, "USERMODEL");
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            req.setAttribute("categories", categoryService.findAll());
            RequestDispatcher rd = req.getRequestDispatcher("/views/admin/home.jsp");
            rd.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && action.equals("login")) {
            UserModel model = FormUtil.toModel(UserModel.class, req);
            model = userService.findByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword(), 1);
            if (model != null) {
                SessionUtil.getInstance().putValue(req, "USERMODEL", model);
                if (model.getRole().getCode().equals("USER")) {
                    resp.sendRedirect(req.getContextPath() + "/home");
                } else if (model.getRole().getCode().equals("ADMIN")) {
                    resp.sendRedirect(req.getContextPath() + "/admin");
                } else {
                    resp.sendRedirect(req.getContextPath()+ "/login?action=login");
                }
            }
        }
    }
}
