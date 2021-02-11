<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 25.1.2021.
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>

    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Edit Product</title>
</head>
<body class="polka-dot">
    <jsp:include page="navbar.jsp" flush="true"/>
    <section>
        <div class="jumbotron mt-5"
             style="background-image: url(https://cdn.discordapp.com/attachments/766270718744461314/804367616105381908/jumbotronFinal.png); background-size: 90%;">
            <div class="container">
                <h1 class="cursive mb-5">Edit Selected Product</h1>
            </div>
        </div>
    </section>
    <div class="container h-50 w-100 form-container">
        <div class="row justify-content-center" align="center">
            <form:form method="POST" action="/editProduct" modelAttribute="product" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><form:label path="id">Id</form:label></td>
                        <td><form:input path="id" required="required" readonly="true"/></td>
                        <td><form:errors path="id" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="name">Name</form:label></td>
                        <td><form:input path="name" required="required"/></td>
                        <td><form:errors path="name" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="description">Description</form:label></td>
                        <td><form:textarea path="description" rows="3" required="required"/></td>
                        <td><form:errors path="description" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="manufacturer">Manufacturer</form:label></td>
                        <td><form:input path="manufacturer" required="required"/></td>
                        <td><form:errors path="manufacturer" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="unitPrice">Unit price</form:label></td>
                        <td><form:input path="unitPrice" required="required"/></td>
                        <td><form:errors path="unitPrice" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="unitsInStock">In stock</form:label></td>
                        <td><form:input path="unitsInStock" required="required"/></td>
                        <td><form:errors path="unitsInStock" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="image">In stock</form:label></td>
                        <td><form:input path="image" name="image" type="file"/></td>
                    </tr>
                </table>

                <button class="btn btn-default pink-btn" type="submit" value="Submit">Submit</button>
            </form:form>
        </div>
    </div>

</body>
</html>
