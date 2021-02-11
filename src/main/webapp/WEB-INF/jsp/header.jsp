<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27.1.2021.
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#carouselExampleIndicators').carousel({
                interval: 1000;
            });
        });
    </script>

    <title>Title</title>
</head>
<body>

    <header>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100"
                         src="https://cdn.discordapp.com/attachments/766270718744461314/804172468469235762/yello.png"
                         alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="heading">Winter Sale</h5>
                        <p class="ad">50% off on all orders over 50 KM!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                         src="https://cdn.discordapp.com/attachments/766270718744461314/804172117674426368/d6u1s0s-029a0bcd-56ae-45bb-8493-2abb335c50d7.png"
                         alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="heading">Cutest Pens</h5>
                        <p class="ad">Lighten up your day with our adorable pens!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                         src="https://cdn.discordapp.com/attachments/766270718744461314/804177607641792553/d6u1rp2-cca3da62-f3e4-41bf-b51d-7f53fff1a5d1.png"
                         alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="heading">New Arrivals</h5>
                        <p class="ad">Browse our new cute stationery!</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>

    </header>


</body>
</html>
