<%@ page import="by.epam.managers.LanguageManager" %>
<%@ page import="java.util.Locale" %><%--
  User: Druzenok yury
  Date: 07.12.2015
  Time: 9:04
  Login form
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <c:import url="/jsp/common/import.jsp"/>

</head>
<body>
<%-- header --%>
<div class="header_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo_login">
                <a href="/jsp/common/login.jsp"><img src="/images/logo.png" alt=""></a>
            </div>
            <div class="clear"></div>
            <div class="top-nav">
                <nav class="clearfix">
                    <ul>
                        <li class="active"><a href="/index.jsp">hotel</a></li>
                        <li><a href="/jsp/client/rooms.jsp">rooms & suits</a></li>
                        <li><a href="/jsp/client/reservation.jsp">reservation</a></li>
                        <li><a href="/jsp/client/activities.jsp">activities</a></li>
                        <li><a href="/jsp/client/contact.jsp">contact</a></li>
                    </ul>
                    <a href="#" id="pull">Menu</a>
                </nav>
            </div>
        </div>
    </div>
</div>
<!--start main -->
<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <div class="contact">
                <div class="contact-form">
                    <h2 class="login-header" align="center">${login_message}</h2>
                    <form method="post" action="/controller" class="login-form">
                        <input type="hidden" name="command" value="login" />
                        <div>
                            <span><label>${login_login}</label></span>
                            <span><input name="userLogin" type="text" class="textbox"></span>
                        </div>
                        <div>
                            <span><label>${login_password}</label></span>
                            <span><input name="userPassword" type="password" class="textbox"></span>
                        </div>
                        <div>
                            <span><label>${login_language}</label></span>
                            <select name="language" >
                                <option value="en">${login_language_en}</option>
                                <option value="ru">${login_language_ru}</option>
                                <%--develop later--%>
                                <%--<option value="es">Espanol</option>--%>
                            </select>
                        </div>
                        <div>
                            <span><input  type="submit"  value=${login_submit}></span>
                        </div>
                        <div>
                            <span><input  class="login-reset" type="reset" value=${login_refresh}></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<%--footer--%>
<div class="footer_bg">
    <div class="wrap">
        <div class="footer">
            <div class="login-copy">
                <p align="center" class="link"><span>${login_footer}&nbsp;<a href="/jsp/common/registration.jsp"> ${login_registlink}</a></span></p>
            </div>
            <div class="login-copy">
                <p align="center" class="link"><span>© 2015 All rights reserved | Druzenok Yury</span></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
