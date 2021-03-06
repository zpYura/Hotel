package by.epam.filters;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Check rights of the user
 *
 * @author Yury Druzenok
 * @version 1.0  16 Dec 2015
 */

@WebFilter(urlPatterns = {"/jsp/client/*","/jsp/admin/*"},
        initParams = {@WebInitParam(name = "INDEX_PATH", value = "/index.jsp")})
public class PageRedirectSecurityFilter implements Filter {
    private String indexPath;

    public void init(FilterConfig fConfig) throws ServletException {
        indexPath = fConfig.getInitParameter("INDEX_PATH");
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        // if it's not a user go to index page
        if (httpRequest.getSession().getAttribute("userId") == null) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + indexPath);
        } else {
            RequestDispatcher dispatcher = httpRequest.getRequestDispatcher(httpRequest.getRequestURI());
            dispatcher.forward(httpRequest, httpResponse);

        }
    }

    public void destroy() {
    }
}
