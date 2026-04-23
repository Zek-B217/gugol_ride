
<%@include file="config.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("user_log") != null){
        session.setAttribute("user_log", null);
        session.setAttribute("CURRENT_PATH_FROM_ORIGIN_FOLDER", "");

        if (request.getCookies() != null) {
            for (Cookie temp : request.getCookies()) {
                if (temp.getName().equals("ora_ultima_azione")) {
                    temp.setMaxAge(0);
                    response.addCookie(temp);
                }
            }
        }
    }
    response.sendRedirect("index.jsp");
%>