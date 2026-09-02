<%@ page language="java" import="java.util.*,com.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VizagGatedCommunity</title>
</head>

<body style="margin:0;
             font-family:Arial,sans-serif;
             background:linear-gradient(135deg,#0f172a,#2563eb);
             min-height:100vh;
             padding:30px;">

<div style="background:white;
            max-width:1200px;
            margin:auto;
            border-radius:15px;
            padding:25px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);">

    <h1 style="text-align:center;
               color:#2563eb;
               margin-bottom:25px;">
        Residents Information
    </h1>

    <table style="width:100%;
                  border-collapse:collapse;
                  text-align:center;">

        <tr style="background:#2563eb;
                   color:white;">

            <th style="padding:12px;">User ID</th>
            <th style="padding:12px;">Username</th>
           
            <th style="padding:12px;">Email</th>
            <th style="padding:12px;">Full Name</th>
            <th style="padding:12px;">Role</th>
            <th style="padding:12px;">Phone</th>
        </tr>

        <%
        List<Residents> rs =
            (List<Residents>) request.getAttribute("allResident");

        for(Residents reslist : rs){
        %>

        <tr style="border-bottom:1px solid #ddd;">

            <td style="padding:10px;"><%=reslist.getId()%></td>
            <td style="padding:10px;"><%=reslist.getUserName()%></td>
           
            <td style="padding:10px;"><%=reslist.getEmail()%></td>
            <td style="padding:10px;"><%=reslist.getFullName()%></td>

            <td style="padding:10px;">
                <span style="background:#dbeafe;
                             color:#1d4ed8;
                             padding:5px 10px;
                             border-radius:15px;
                             font-size:13px;">
                    <%=reslist.getRole()%>
                </span>
            </td>

            <td style="padding:10px;"><%=reslist.getPhone()%></td>

        </tr>

        <% } %>

    </table>

    <div style="text-align:center;
                margin-top:25px;">

        <button
            style="padding:12px 25px;
                   background:#dc2626;
                   color:white;
                   border:none;
                   border-radius:8px;
                   cursor:pointer;
                   font-size:15px;
                   font-weight:bold;"
            onclick="window.location.href='adminDashboard.jsp'">

            Back to Dashboard

        </button>

    </div>

</div>

</body>
</html>