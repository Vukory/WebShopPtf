<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 25.1.2021.
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Product</title>
</head>
<body class="polka-dot">
    <jsp:include page="navbar.jsp" flush="true"/>
    <div class="container w-100 h-100 form-container">
        <section class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <img src="${product.image}" width="400" height="400">
                </div>
                <div class="col-md-5">
                    <h3 class="pink">${product.name}</h3>
                    <p>${product.description}</p>

                    <h4 class="pink">${product.unitPrice} <span>KM</span></h4>
                    <p>
                        <strong class="pink">Item Code: </strong><span class="label label- warning">${product.id}</span>
                    </p>
                    <p>
                        <strong class="pink">Manufacturer: </strong>${product.manufacturer}
                    </p>
                    <p>
                        <strong class="pink">Available units in stock: </strong>
                        ${product.unitsInStock}
                    </p>
                    <p>
                        <c:choose>
                            <c:when test="${product.unitsInStock==0}">
                                <button

                                        disabled="disabled"
                                        class="btn btn-warning btn-large orange-btn"
                                        onclick="location.href='/cart/addProduct/${product.id}'">
                                    Out Of Stock
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button
                                        class="btn btn-warning btn-large orange-btn"
                                        onclick="location.href='/cart/addProduct/${product.id}'">
                                    Add To Cart
                                </button>
                            </c:otherwise>
                        </c:choose>


                        <button class="btn btn-warning btn-large pink-btn" onclick="location.href='/cart'">View Cart
                        </button>
                    </p>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
