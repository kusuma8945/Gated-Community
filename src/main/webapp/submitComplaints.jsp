<%@ page language="java" import="com.model.*" contentType="text/html; charset=UTF-8"
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
             align-items:center;
             padding:20px;">

<%
Residents user=(Residents) request.getAttribute("res");
%>

<div style="background:white;
            width:500px;
            padding:30px;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);">

    <h2 style="text-align:center;
               color:#2563eb;">
        Submit Complaint
    </h2>

    <p style="text-align:center;
              color:#555;">
        Welcome, <strong><%=user.getFullName()%></strong>
    </p>

    <form action="submitComplaints" method="post">

        <input type="hidden" name="userId" value="<%=user.getId()%>">

        <label style="font-weight:bold;">Full Name</label><br>
        <input type="text"
               name="fullName"
               value="<%=user.getFullName()%>"
               required
               style="width:95%;
                      padding:10px;
                      margin-top:5px;
                      margin-bottom:15px;
                      border:1px solid #ccc;
                      border-radius:8px;"><br>

        <label style="font-weight:bold;">Email</label><br>
        <input type="email"
               name="email"
               value="<%=user.getEmail()%>"
               required
               style="width:95%;
                      padding:10px;
                      margin-top:5px;
                      margin-bottom:15px;
                      border:1px solid #ccc;
                      border-radius:8px;"><br>

        <label style="font-weight:bold;">Phone Number</label><br>
        <input type="text"
               name="phone"
               value="<%=user.getPhone()%>"
               required
               style="width:95%;
                      padding:10px;
                      margin-top:5px;
                      margin-bottom:15px;
                      border:1px solid #ccc;
                      border-radius:8px;"><br>

        <label style="font-weight:bold;">Complaint Category</label><br>
        <select name="category"
                required
                style="width:100%;
                       padding:10px;
                       margin-top:5px;
                       margin-bottom:15px;
                       border:1px solid #ccc;
                       border-radius:8px;">

            <option value="">Select Category</option>
            <option value="Water">Water</option>
            <option value="Electricity">Electricity</option>
            <option value="Security">Security</option>
            <option value="Maintenance">Maintenance</option>
            <option value="Other">Other</option>

        </select><br>

        <label style="font-weight:bold;">Subject</label><br>
        <input type="text"
               name="subject"
               placeholder="Enter Subject"
               required
               style="width:95%;
                      padding:10px;
                      margin-top:5px;
                      margin-bottom:15px;
                      border:1px solid #ccc;
                      border-radius:8px;"><br>

        <label style="font-weight:bold;">Complaint Details</label><br>
        <textarea name="description"
                  rows="5"
                  required
                  placeholder="Enter your complaint details"
                  style="width:95%;
                         padding:10px;
                         margin-top:5px;
                         margin-bottom:20px;
                         border:1px solid #ccc;
                         border-radius:8px;
                         resize:none;"></textarea><br>

        <input type="submit"
               value="Submit Complaint"
               style="width:100%;
                      padding:12px;
                      background:#16a34a;
                      color:white;
                      border:none;
                      border-radius:8px;
                      font-size:15px;
                      font-weight:bold;
                      cursor:pointer;">

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
        onclick="window.location.href='userDashboard.jsp'">
        Back
    </button>

</div>

</body>
</html>