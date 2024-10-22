<%-- 
    Document   : loginresponse
    Created on : 26 Feb, 2024, 8:04:09 AM
    Author     : Chetabist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid=(String)request.getAttribute("userid");
    String result=(String)request.getAttribute("result");
    if(userid!=null && result!=null)
    {
        HttpSession sess=request.getSession();
        sess.setAttribute("userid", userid);
        String url="";
        if(result.equalsIgnoreCase("Admin"))
        {
            url="AdminControllerServlet;jsessionid="+sess.getId();
        }
        else
        {
            url="VotingControllerServlet;jsessionid="+sess.getId();
        }
//        System.out.println(url);
        out.println(url);
    }
    else
    {
        out.println("error");
    }
%>    
