<%--
  Created by IntelliJ IDEA.
  User: brandongossen
  Date: 10/17/17
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="partials/styles.jsp" %>
    <title>Profile Page</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<a id="top"></a>
<h1>My Profile Page</h1>
<p>Hello!<br> My name is <em>Brandon</em> and here are some fun facts about myself:<br>
    I'm a 29 year old male from San Antonio, TX.<br>
    I try to dance like <strong>Michael Jackson</strong>.<br>
    I want to code all day, everyday!
</p>
<div id="wrapper">
    <p><span>I</span> love the casinos in Las Vegas, Nevada!</p>
    <p>Samuel L. Jackson<br>is my favorite actor!</p>
</div>
<h2>My Favorite Quote</h2>
<blockquote>"Do you understand the words coming out of my mouth!"<br>
    -Chris Tucker</blockquote>
<h2>I'm Learning the LAMP Stack</h2>
<ul>
    <li>L: Linux</li>
    <li>A: Apache</li>
    <li>M: MySQL</li>
    <li>P: PHP</li>
</ul>
<h2>My Top 5 Favorite Foods</h2>
<ol>
    <li>Sushi</li>
    <li>Pasta</li>
    <li>Tacos</li>
    <li>Seafood</li>
    <li>Pad Thai</li>
</ol>
<h2>Questions I'm Often Asked</h2>
<dl>
    <dt>How old are you?</dt>
    <dd>I'm almost 30 years old, but from what I heard 30 is the new 20!</dd>
    <dt>What type of profession do you want to make into a career?</dt>
    <dd>Any profession that allows me to code all day and all night!</dd>
</dl>
<h2>My Favorite Websites</h2>
<ol>
    <li><a href="http://www.codeup.com" target="_blank">Codeup</a></li>
    <li><a href="http://www.spurs.com" target="_blank">San Antonio Spurs</a></li>
    <li><a href="http://www.boxinginsider.com" target="_blank">Boxing News</a></li>
    <li><a href="http://www.espn.com" target="_blank">ESPN</a></li>
    <li><a href="http://www.youtube.com" target="_blank">YouTUBE</a></li>
</ol>
<h2>My Vehicle</h2>
<p>I own a 2008 Black Acura TL Model Car, which still drives smooth. It has leather seating, a gps system, and a sun roof.</p>
<img src="img/My Vehicle.jpg" alt="2008 Black Acura TL">
<h2>Decimal to Hexadecimal Conversion Chart</h2>
<table>
    <tr>
        <th>Decimal</th>
        <th>Hexadecimal</th>
    </tr>
    <tr>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>1</td>
        <td>1</td>
    </tr>
    <tr>
        <td>2</td>
        <td>2</td>
    </tr>
    <tr>
        <td>3</td>
        <td>3</td>
    </tr>
    <tr>
        <td>4</td>
        <td>4</td>
    </tr>
    <tr>
        <td>5</td>
        <td>5</td>
    </tr>
    <tr>
        <td>6</td>
        <td>6</td>
    </tr>
    <tr>
        <td>7</td>
        <td>7</td>
    </tr>
    <tr>
        <td>8</td>
        <td>8</td>
    </tr>
    <tr>
        <td>9</td>
        <td>9</td>
    </tr>
    <tr>
        <td>10</td>
        <td>A</td>
    </tr>
    <tr>
        <td>11</td>
        <td>B</td>
    </tr>
    <tr>
        <td>12</td>
        <td>C</td>
    </tr>
    <tr>
        <td>13</td>
        <td>D</td>
    </tr>
    <tr>
        <td>14</td>
        <td>E</td>
    </tr>
    <tr>
        <td>15</td>
        <td>F</td>
    </tr>
</table>
<a href="#top">Go To Top Of Page</a>
<%@ include file="partials/scripts.jsp" %>
</body>
</html>
