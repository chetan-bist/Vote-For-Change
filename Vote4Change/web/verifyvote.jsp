<%-- 
    Document   : verifyvote
    Created on : 2 Mar, 2024, 8:38:39 AM
    Author     : Chetabist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid=(String)session.getAttribute("userid");
    if(userid==null)
    {
        session.invalidate();
        response.sendRedirect("accessdenied.html");
        return;
    }
    boolean result=(boolean)request.getAttribute("result");
    if(result==true)
        out.println("success");
    else
        out.println("failed");
%>
