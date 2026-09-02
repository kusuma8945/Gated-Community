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
            border-radius:15px;
            padding:25px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            max-width:1200px;
            margin:auto;">

    <h1 style="text-align:center;
               color:#2563eb;
               margin-bottom:25px;">
        View All Complaints
    </h1>

    <table style="width:100%;
                  border-collapse:collapse;
                  text-align:center;">

        <tr style="background:#2563eb;
                   color:white;">
            <th style="padding:12px;">Complaint ID</th>
            <th style="padding:12px;">User ID</th>
            <th style="padding:12px;">Category</th>
            <th style="padding:12px;">Subject</th>
            <th style="padding:12px;">Description</th>
            <th style="padding:12px;">Status</th>
            <th style="padding:12px;">Action</th>
        </tr>

        <%
        List<Complaints> coms =
            (List<Complaints>) request.getAttribute("allcomplaint");

        for(Complaints complist : coms){
        %>

        <tr style="border-bottom:1px solid #ddd;">
            <td style="padding:10px;"><%=complist.getComplaintId()%></td>
            <td style="padding:10px;"><%=complist.getUserId()%></td>
            <td style="padding:10px;"><%=complist.getCategory()%></td>
            <td style="padding:10px;"><%=complist.getSubject()%></td>
            <td style="padding:10px;"><%=complist.getDescription()%></td>
            <td style="padding:10px;">
                <span style="background:#e0f2fe;
                             color:#0369a1;
                             padding:5px 10px;
                             border-radius:15px;
                             font-size:13px;">
                    <%=complist.getStatus()%>
                </span>
            </td>

            <td style="padding:10px;">
                <a href="updateStatusComplaint?complaintId=<%=complist.getComplaintId()%>"
                   style="background:#16a34a;
                          color:white;
                          padding:8px 15px;
                          text-decoration:none;
                          border-radius:6px;
                          font-size:14px;">
                    Update
                </a>
            </td>
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
                   font-size:15px;"
            onclick="window.location.href='adminDashboard.jsp'">
            Back
        </button>

    </div>

</div>

</body>
</html>