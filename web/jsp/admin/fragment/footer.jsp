<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Footer</title>
</head>
<body>
<div class="footer_bg">
<div class="wrap">
<div class="footer">
			<div class="copy">
				<p class="link"><span>© 2016 All rights reserved | Druzenok Yury</span></p>
			</div>
			<div class="f_nav">
				<ul>
                    <li><a href="/jsp/admin/main.jsp">${hotel}</a></li>
					<li><a href="/controller?command=request_all">${requests}</a></li>
					<li><a href="/controller?command=rooms_all">${rooms}</a></li>
					<li><a href="/controller?command=bills_all">${bills}</a></li>
					<li><a href="/controller?command=clients_all">${admin_clients_header}</a></li>
				</ul>
			</div>
			<div class="clear"></div>
</div>
</div>
</div>		

</body></html>