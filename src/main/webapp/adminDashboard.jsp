<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VizagGatedCommunity - Admin Dashboard</title>
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

<div style="width:850px;
            background:white;
            border-radius:15px;
            padding:30px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            text-align:center;">

    <h1 style="color:#2563eb;">
        Admin Dashboard
    </h1>

    <h2 style="color:#333;">
        Welcome, <%=session.getAttribute("username") %>
    </h2>

    <p style="color:#666;">
        Manage complaints, residents, and community operations from one place.
    </p>

    <div style="display:flex;
                justify-content:center;
                gap:25px;
                flex-wrap:wrap;
                margin-top:35px;">

        <!-- Complaints Card -->
        <div style="width:280px;
                    padding:25px;
                    border-radius:12px;
                    box-shadow:0 4px 12px rgba(0,0,0,0.12);">

            <h3>📋 View All Complaints</h3>

            <p style="color:#666;">
                Monitor and manage all complaints submitted by residents.
            </p>

            <button
                style="padding:10px 20px;
                       background:#2563eb;
                       color:white;
                       border:none;
                       border-radius:8px;
                       cursor:pointer;
                       font-weight:bold;"
                onclick="window.location.href='viewAllComplaints'">
                Open
            </button>
        </div>

        <!-- Residents Card -->
        <div style="width:280px;
                    padding:25px;
                    border-radius:12px;
                    box-shadow:0 4px 12px rgba(0,0,0,0.12);">

            <h3>👥 Residents Data</h3>

            <p style="color:#666;">
                View and manage registered resident information.
            </p>

            <button
                style="padding:10px 20px;
                       background:#2563eb;
                       color:white;
                       border:none;
                       border-radius:8px;
                       cursor:pointer;
                       font-weight:bold;"
                onclick="window.location.href='residentsDetails'">
                Open
            </button>
        </div>

    </div>

    <button
        style="margin-top:35px;
               padding:12px 30px;
               background:#dc2626;
               color:white;
               border:none;
               border-radius:8px;
               font-size:15px;
               font-weight:bold;
               cursor:pointer;"
        onclick="window.location.href='logout'">
        Logout
    </button>

</div>

</body>
</html>