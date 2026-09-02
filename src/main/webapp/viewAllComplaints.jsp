<%@ page language="java" import="com.model.*,java.util.*" contentType="text/html; charset=UTF-8"
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
        My Complaints
    </h1>

    <table style="width:100%;
                  border-collapse:collapse;
                  text-align:center;">

        <tr style="background:#2563eb;
                   color:white;">

            <th style="padding:12px;">Complaint ID</th>
            <th style="display:none;">User ID</th>
            <th style="padding:12px;">Category</th>
            <th style="padding:12px;">Subject</th>
            <th style="padding:12px;">Description</th>
            <th style="padding:12px;">Status</th>
            <th style="padding:12px;">Action</th>

        </tr>

        <%
        List<Complaints> coms =
            (List<Complaints>) request.getAttribute("complaintList");

        for(Complaints complist : coms){
        if(!"Resolved".equals(complist.getStatus())){
        %>

        <tr style="border-bottom:1px solid #ddd;">

            <td style="padding:10px;"><%=complist.getComplaintId()%></td>

            <td style="display:none;">
                <%=complist.getUserId()%>
            </td>

            <td style="padding:10px;"><%=complist.getCategory()%></td>
            <td style="padding:10px;"><%=complist.getSubject()%></td>
            <td style="padding:10px;"><%=complist.getDescription()%></td>

            <td style="padding:10px;">

                <%
                String status = complist.getStatus();

                if("Pending".equals(status)){
                %>
                    <span style="background:#fef3c7;
                                 color:#92400e;
                                 padding:5px 10px;
                                 border-radius:15px;">
                        Pending
                    </span>
                <%
                }else if("In Progress".equals(status)){
                %>
                    <span style="background:#dbeafe;
                                 color:#1d4ed8;
                                 padding:5px 10px;
                                 border-radius:15px;">
                        In Progress
                    </span>
                <%
                }else{
                %>
                    <span style="background:#dcfce7;
                                 color:#166534;
                                 padding:5px 10px;
                                 border-radius:15px;">
                        <%=status%>
                    </span>
                <%
                }
                %>

            </td>

            <td style="padding:10px;">

                <a href="editComplaint?complaintId=<%=complist.getComplaintId()%>"
                   style="background:#2563eb;
                          color:white;
                          padding:8px 12px;
                          text-decoration:none;
                          border-radius:6px;
                          margin-right:5px;">
                    Edit
                </a>

                <a href="deleteComplaint?complaintId=<%=complist.getComplaintId()%>&userId=<%=complist.getUserId()%>"
                   onclick="return confirm('Are you sure you want to delete this complaint?')"
                   style="background:#dc2626;
                          color:white;
                          padding:8px 12px;
                          text-decoration:none;
                          border-radius:6px;">
                    Delete
                </a>

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
                   cursor:pointer;
                   font-size:15px;
                   font-weight:bold;"
            onclick="window.location.href='userDashboard.jsp'">

            Back to Dashboard

        </button>

    </div>

</div>

</body>
</html>