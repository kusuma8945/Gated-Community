<%@ page language="java" contentType="text/html; charset=UTF-8"
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
             display:flex;
             justify-content:center;
             align-items:center;">

<%
Integer res_id = (Integer) session.getAttribute("Id");

if(res_id == null){
    response.sendRedirect("index.jsp");
    return;
}
%>

<div style="width:800px;
            background:white;
            border-radius:15px;
            padding:30px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            text-align:center;">

    <h1 style="color:#2563eb;">
        Welcome, <%=session.getAttribute("username") %>
    </h1>

    <p style="color:#666;">
        Manage and track your community complaints from one place.
    </p>

    <div style="display:flex;
                justify-content:space-around;
                flex-wrap:wrap;
                margin-top:30px;">

        <!-- Submit Complaint -->
        <div style="width:220px;
                    padding:20px;
                    margin:10px;
                    border-radius:12px;
                    box-shadow:0 4px 10px rgba(0,0,0,0.1);">

            <h3>📝 Submit Complaint</h3>
            <p>Register a new complaint in your community.</p>

            <button
                style="padding:10px 20px;
                       background:#2563eb;
                       color:white;
                       border:none;
                       border-radius:8px;
                       cursor:pointer;"
                onclick="window.location.href='submitComplaints?id=<%=res_id%>'">
                Open Form
            </button>
        </div>

        <!-- View Complaints -->
        <div style="width:220px;
                    padding:20px;
                    margin:10px;
                    border-radius:12px;
                    box-shadow:0 4px 10px rgba(0,0,0,0.1);">

            <h3>📋 View Complaints</h3>
            <p>Check all complaints submitted by residents.</p>

            <button
                style="padding:10px 20px;
                       background:#2563eb;
                       color:white;
                       border:none;
                       border-radius:8px;
                       cursor:pointer;"
                onclick="window.location.href='viewServlet?id=<%=res_id%>'">
                View All Complaints
            </button>
        </div>

        <!-- Resolved Complaints -->
        <div style="width:220px;
                    padding:20px;
                    margin:10px;
                    border-radius:12px;
                    box-shadow:0 4px 10px rgba(0,0,0,0.1);">

            <h3>✅ Resolved Complaints</h3>
            <p>View complaints that have been successfully resolved.</p>

            <button
                style="padding:10px 20px;
                       background:#2563eb;
                       color:white;
                       border:none;
                       border-radius:8px;
                       cursor:pointer;"
                onclick="window.location.href='reslovedServlet?id=<%=res_id%>'">
                View Resolved Complaints
            </button>
        </div>

    </div>

    <button
        style="margin-top:30px;
               padding:12px 25px;
               background:#dc2626;
               color:white;
               border:none;
               border-radius:8px;
               font-size:15px;
               cursor:pointer;"
        onclick="window.location.href='logout'">
        Logout
    </button>

</div>

</body>
</html>