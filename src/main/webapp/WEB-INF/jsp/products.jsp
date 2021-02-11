<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 24.1.2021.
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Shop</title>
</head>
<body>
    <jsp:include page="navbar.jsp" flush="true"/>
    <jsp:include page="header.jsp" flush="true"/>

    <div class="container">

        <div class="row justify-content-center">
            <sec:authorize access="isAuthenticated()">
                <div class="row justify-content-center mb-4 pointer-hover" align="center">
                    <a class="col-4 justify-content-center link" onclick="location.href='/addProduct'"
                       sec:authorize="isAuthenticated()">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#a8a8a8"
                             class="bi bi-plus-circle icon" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                        Add Product
                    </a>
                </div>
            </sec:authorize>

            <c:forEach var="i" items="${products}">

                <div class="col-4 product-container" align="center">
                    <img src="${i.image}" width="300" height="300"/>
                    <h6>${i.name}</h6>
                    <p>${i.unitPrice} KM</p>
                    <button class="btn btn-primary pink-btn" onclick="location.href='/viewProduct/${i.id}'">View
                    </button>
                    <sec:authorize access="isAuthenticated()">
                        <button class="btn btn-primary orange-btn" onclick="location.href='/editProduct/${i.id}'"
                                sec:authorize="isAuthenticated()">Edit
                        </button>
                    </sec:authorize>
                </div>


            </c:forEach>

        </div>
    </div>
</body>
</html>
