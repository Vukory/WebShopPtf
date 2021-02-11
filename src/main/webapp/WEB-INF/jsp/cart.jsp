<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27.1.2021.
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <script src="/scripts/main.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Cart</title>
</head>
<body class="polka-dot">
    <jsp:include page="navbar.jsp" flush="true"/>
    <section>
        <div class="jumbotron mt-5"
             style="background-image: url(https://cdn.discordapp.com/attachments/766270718744461314/804367616105381908/jumbotronFinal.png); background-size: 90%;">
            <div class="container">
                <h1 class="cursive">Cart</h1>
                <p class="heading-p mt-3"><strong>All the selected products in your cart</strong></p>
            </div>
        </div>
    </section>

    <section class="container">

        <div>
            <div class="container">
                <div class="row">
                    <button class="btn pull-left pink-btn col-1" onclick="location.href='/cart/clearCart'">
                        Clear Cart
                    </button>
                    <button class="btn pull-right orange-btn col-1  ml-2"
                            onclick="location.href='/cart/checkout'">
                        Check out
                    </button>
                </div>
            </div>
            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit price (KM)</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th></th>
                </tr>
                <c:forEach var="i" items="${products}">
                    <tr data-id="${i.key.id}">
                        <td>${i.key.name}</td>
                        <td>${i.key.unitPrice}</td>
                        <td>${i.value}</td>
                        <td>${i.key.unitPrice*i.value}</td>
                        <td>
                            <button class="orange-btn" onclick="yeetBtn('${i.key.id}')">
                                Remove
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Total</th>
                    <th>${total} KM</th>
                    <th></th>
                </tr>
            </table>

            <button class="btn btn-default" onclick="location.href='/products'">
                Continue shopping
            </button>
        </div>
    </section>

</body>
</html>
