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
Complaints comp = (Complaints) request.getAttribute("complaintList");
%>

<div style="background:white;
            width:500px;
            padding:30px;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);">

    <h2 style="text-align:center;
               color:#2563eb;
               margin-bottom:25px;">
        Edit Complaint
    </h2>

    <form action="editComplaint" method="post">

        <input type="hidden" name="complaintId"
               value="<%=comp.getComplaintId()%>">

        <input type="hidden" name="userId"
               value="<%=comp.getUserId()%>">

        <label style="font-weight:bold;">
            Complaint Category
        </label><br>

        <select id="category"
                name="category"
                required
                style="width:100%;
                       padding:10px;
                       margin-top:5px;
                       margin-bottom:15px;
                       border:1px solid #ccc;
                       border-radius:8px;">

            <option value="">Select Category</option>

            <option value="Water"
                <%= "Water".equals(comp.getCategory()) ? "selected" : "" %>>
                Water
            </option>

            <option value="Electricity"
                <%= "Electricity".equals(comp.getCategory()) ? "selected" : "" %>>
                Electricity
            </option>

            <option value="Security"
                <%= "Security".equals(comp.getCategory()) ? "selected" : "" %>>
                Security
            </option>

            <option value="Maintenance"
                <%= "Maintenance".equals(comp.getCategory()) ? "selected" : "" %>>
                Maintenance
            </option>

            <option value="Other"
                <%= "Other".equals(comp.getCategory()) ? "selected" : "" %>>
                Other
            </option>

        </select>

        <label style="font-weight:bold;">
            Subject
        </label><br>

        <input type="text"
               id="subject"
               name="subject"
               value="<%=comp.getSubject()%>"
               required
               style="width:95%;
                      padding:10px;
                      margin-top:5px;
                      margin-bottom:15px;
                      border:1px solid #ccc;
                      border-radius:8px;">

        <label style="font-weight:bold;">
            Complaint Details
        </label><br>

        <textarea id="description"
                  name="description"
                  rows="5"
                  required
                  style="width:95%;
                         padding:10px;
                         margin-top:5px;
                         margin-bottom:20px;
                         border:1px solid #ccc;
                         border-radius:8px;
                         resize:none;"><%=comp.getDescription()%></textarea>

        <input type="submit"
               value="Update Complaint"
               style="width:100%;
                      padding:12px;
                      background:#2563eb;
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
        onclick="window.history.back()">

        Cancel

    </button>

</div>

</body>
</html>