<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>The Paradise-Hotel | Compute Request</title>
	<c:import url="/jsp/common/import.jsp"/>
</head>
<body>
<!-- start header -->
<c:import url="fragment/header.jsp" />
<!--start main -->
<div class="main_bg">
	<div class="wrap">
		<div class="main">
			<div class="content">
				<div class="room">
					<h4>${requests_page_header}</h4>
					<p class="para">${admin_compute_request_description}</p>
				</div>
				<div class="grids_of_2_table">
					<div class="grids_of_para_table">
						<h1>${requests_page_header}</h1>
						<table class="table3">
							<thead>
							<tr>
								<th scope="col"  class="tablespecHeader">Id</th>
								<th scope="col" >${requests_page_rooms}</th>
								<th scope="col" >${requests_page_type}</th>
								<th scope="col" >${requests_page_in_date}</th>
								<th scope="col" >${requests_page_out_date}</th>
								<th scope="col" >${requests_page_max_cost}</th>
								<th scope="col" >${requests_page_min_cost}</th>
								<th scope="col" >${requests_page_client_id}</th>
								<th scope="col">${requests_page_admin_id}</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="elem" items="${requestsList}" varStatus="status">
								<tr>
									<td><c:out value="${elem.getId()}"/></td>
									<c:set var="clientId" scope="page">${elem.getClientId()}</c:set>
									<td><c:out value="${elem.getNumberOfbeds()}"/></td>
									<td><c:out value="${elem.getType()}"/></td>
									<td><c:out value="${elem.getInDate()}"/></td>
									<td><c:out value="${elem.getOutDate()}"/></td>
									<td><c:out value="${elem.getMaxCost()}"/></td>
									<td><c:out value="${elem.getMinCost()}"/></td>
									<td><c:out value="${elem.getClientId()}"/></td>
									<td><c:out value="${elem.getAdminId()}"/></td>
								</tr>

							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="clear"></div>
				</div>
				<div class="grids_of_2_table">
					<div class="grids_of_para_table">
						<p>${rooms_lis_empty_error}</p>
                        <br>
                        <c:if test="${empty roomsList}">
                            <form action="/controller">
                                <input type="hidden" name="command" value="find_client" />
								<input type="hidden" name="clientId" value="${clientId}" />
                                <input type="submit" class="compute_request-submit" value="${admin_compute_request_button}" style="width: 82px;">
                            </form>
                        </c:if>
						<c:if test="${not empty roomsList}">
						<h1>${admin_rooms_page_header}</h1>
						<table class="table3">
							<thead>
							<tr>
								<th scope="col"  class="tablespecHeader">Id</th>
								<th scope="col" >${admin_rooms_page_rooms}</th>
								<th scope="col" >${admin_rooms_page_type}</th>
								<th scope="col" >${admin_rooms_page_cost}</th>
								<th scope="col" >${admin_rooms_page_release_date}</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="elem" items="${roomsList}" varStatus="status">
								<tr>
									<td><a href="/controller?command=create_bill&room_id=${elem.getId()}"><c:out value="${elem.getId()}"/></a></td>
									<td><c:out value="${elem.getNumberOfbeds()}"/></td>
									<td><c:out value="${elem.getType()}"/></td>
									<td><c:out value="${elem.getCostPerDay()}"/></td>
									<td><c:out value="${elem.getReleaseDate()}"/></td>
								</tr>

							</c:forEach>
							</tbody>
						</table>
						</c:if>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<!-- start footer -->
<c:import url="/jsp/admin/fragment/footer.jsp" />
</body>
</html>
