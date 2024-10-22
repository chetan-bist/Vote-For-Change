<%-- 
    Document   : showexception
    Created on : 25 Feb, 2024, 6:19:13 AM
    Author     : Chetabist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Exception ex=(Exception)request.getAttribute("Exception");
  System.out.println("Exception is :"+ex);
  out.println("Some exception occurred"+ex.getMessage());
%>