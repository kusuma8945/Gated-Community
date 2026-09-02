<%@ page language="java" import="java.util.*,com.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VizagGatedCommunity - Resolved Complaints</title>
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
               color:#16a34a;
               margin-bottom:25px;">
        ✅ Resolved Complaints
    </h1>

    <table style="width:100%;
                  border-collapse:collapse;
                  text-align:center;">

        <tr style="background:#16a34a;
                   color:white;">

            <th style="padding:12px;">Complaint ID</th>
            <th style="display:none;">User ID</th>
            <th style="padding:12px;">Category</th>
            <th style="padding:12px;">Subject</th>
            <th style="padding:12px;">Description</th>
            <th style="padding:12px;">Status</th>

        </tr>

        <%
        List<Complaints> coms =
            (List<Complaints>) request.getAttribute("complaintList");

        for(Complaints complist : coms){
        if("Resolved".equals(complist.getStatus())){
        %>

        <tr style="border-bottom:1px solid #ddd;">

            <td style="padding:10px;">
                <%=complist.getComplaintId()%>
            </td>

            <td style="display:none;">
                <%=complist.getUserId()%>
            </td>

            <td style="padding:10px;">
                <%=complist.getCategory()%>
            </td>

            <td style="padding:10px;">
                <%=complist.getSubject()%>
            </td>

            <td style="padding:10px;">
                <%=complist.getDescription()%>
            </td>

            <td style="padding:10px;">
                <span style="background:#dcfce7;
                             color:#166534;
                             padding:5px 12px;
                             border-radius:15px;
                             font-weight:bold;">
                    Resolved
                </span>
            </td>

        </tr>

        <%
        }
        }
        %>

    </table>

    <div style="text-align:center;
                margin-top:25px;">

        <button
            style="padding:12px 25px;
                   background:#dc2626;
                   color:white;
                   border:none;
                   border-radius:8px;
                   font-size:15px;
                   font-weight:bold;
                   cursor:pointer;"
            onclick="window.location.href='userDashboard.jsp'">

            Back to Dashboard

        </button>

    </div>

</div>

</body>
</html>