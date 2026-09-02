<%@ page language="java" import="com.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Complaint Status</title>
</head>

<body style="margin:0;
             font-family:Arial,sans-serif;
             background:linear-gradient(135deg,#0f172a,#2563eb);
             min-height:100vh;
             display:flex;
             justify-content:center;
             align-items:center;">

<%
Complaints comp = (Complaints) request.getAttribute("complaintList");
%>

<div style="background:white;
            width:400px;
            padding:30px;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            text-align:center;">

    <h2 style="color:#2563eb;
               margin-bottom:20px;">
        Update Complaint Status
    </h2>

    <p style="color:#666;">
        Complaint ID: <strong><%=comp.getComplaintId()%></strong>
    </p>

    <form action="updateStatusComplaint" method="post">

        <input type="hidden"
               name="complaintId"
               value="<%=comp.getComplaintId()%>">

        <input type="hidden"
               name="userId"
               value="<%=comp.getUserId()%>">

        <label style="display:block;
                      text-align:left;
                      margin-bottom:8px;
                      font-weight:bold;">
            Status
        </label>

        <select id="status"
                name="status"
                required
                style="width:100%;
                       padding:10px;
                       border:1px solid #ccc;
                       border-radius:8px;
                       margin-bottom:25px;">

            <option value="">Select Status</option>

            <option value="Pending"
                <%= "Pending".equals(comp.getStatus()) ? "selected" : "" %>>
                Pending
            </option>

            <option value="In Progress"
                <%= "In Progress".equals(comp.getStatus()) ? "selected" : "" %>>
                In Progress
            </option>

            <option value="Resolved"
                <%= "Resolved".equals(comp.getStatus()) ? "selected" : "" %>>
                Resolved
            </option>

        </select>

        <button type="submit"
                style="width:100%;
                       padding:12px;
                       background:#16a34a;
                       color:white;
                       border:none;
                       border-radius:8px;
                       font-size:15px;
                       font-weight:bold;
                       cursor:pointer;">
            Update Status
        </button>

    </form>

    <button
        style="width:100%;
               margin-top:15px;
               padding:12px;
               background:#dc2626;
               color:white;
               border:none;
               border-radius:8px;
               font-size:15px;
               font-weight:bold;
               cursor:pointer;"
        onclick="window.location.href='viewAllComplaints'">
        Back
    </button>

</div>

</body>
</html>