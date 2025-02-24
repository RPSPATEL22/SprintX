<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Travel Packages</title>
</head>
<body>
    <h2>Available Packages</h2>
    <c:forEach var="package" items="${packageList}">
        <div>
            <h3>${package.name}</h3>
            <p>${package.description}</p>
            <p>Price: ${package.price}</p>
            <img src="${package.image}" alt="Package Image">
            <form action="book" method="post">
                <input type="hidden" name="packageId" value="${package.id}">
                <button type="submit">Book Now</button>
            </form>
        </div>
    </c:forEach>
</body>
</html>