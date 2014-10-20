<%-- 
    Document   : purchasingAdress
    Created on : Oct 17, 2014, 10:41:58 PM
    Author     : Weldino
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter your Address</title>
    </head>
    <body>
        <form:form action="purchasingAddress" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>Street:</td>
                    <td><form:input path="street" /> </td>
                    <td><form:errors path="street" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td><form:input path="state" /> </td>
                    <td><form:errors path="state" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><form:input path="city" /> </td>
                    <td><form:errors path="city" cssClass="error"/> </td>
                </tr>
                
                <tr>
                    <td>Zip Code:</td>
                    <td><form:input path="zipcode" /> </td>
                    <td><form:errors path="zipcode" cssClass="error"/> </td>
                </tr>

            </table>
            <input type="submit"/>

        </form:form>
    </body>
</html>