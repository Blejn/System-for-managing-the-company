<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <link href="/style/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<body class="client-body">
<header>

    <div>

        <table cellpadding="0px" cellspacing="0px" id="navBar" style="background-color: darkorange; ">
            <tr >
                <td>
                    <h3><a href="/home-page-client" style=" color: white"><i class='bx bxs-home' ></i> Strona główna</a></h3>
                </td>
                <td>
                    <h3><a href="/add-order" style=" color: white"><i class='bx bxs-envelope' ></i> Złóż zamówienie</a></h3>
                </td>
                <td >
                    <h3><a href="/contact-client" style=" color: white"><i class='bx bxs-phone-call'></i> Kontakt</a></h3>
                </td>
                <td>
                    <h3><a href="/products-client" style=" color: white"><i class='bx bx-layer'></i> Produkty</a></h3>
                </td>
                <td>
                    <h3><a href="/profile-client" style=" color: white"><i class='bx bx-group' ></i> Moje dane</a></h3>
                </td>
                <td>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <form id="logoutForm" method="POST" action="${contextPath}/logout">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>

                        <h3 style="color: white">Welcome ${pageContext.request.userPrincipal.name} | <a style="color: white" onclick="document.forms['logoutForm'].submit()">Wyloguj</a></h3>

                    </c:if>

                </td>
            </tr>
        </table>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</header>
