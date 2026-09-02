<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VizagGatedCommunity</title>
</head>

<body style="margin:0;
             font-family:Arial,sans-serif;
             background:linear-gradient(135deg,#0f172a,#2563eb);
             display:flex;
             justify-content:center;
             align-items:center;
             min-height:100vh;">

<div style="background:white;
            width:450px;
            padding:25px;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            text-align:center;">

<h2 style="color:#2563eb;
           margin-bottom:10px;">
    ADMIN REGISTRATION
</h2>

<p style="color:#666;
          font-size:14px;
          margin-bottom:20px;">
    Create an administrator account with special privileges.
</p>

<%
String s = (String) request.getAttribute("error");
if (s != null) {
%>
<div style="background:#fee2e2;
            color:#dc2626;
            padding:10px;
            border-radius:8px;
            margin-bottom:20px;
            font-size:14px;">
    <%= s %>
</div>
<%
}
%>

<form action="adminsignup" method="post">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    UserName
</label>

<input name="userName"
       type="text"
       placeholder="Enter UserName"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    Password
</label>

<input name="password"
       type="password"
       placeholder="Enter Password"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    Email
</label>

<input name="email"
       type="email"
       placeholder="Enter Email"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    Full Name
</label>

<input name="fullName"
       type="text"
       placeholder="Enter Full Name"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    Phone
</label>

<input name="phone"
       type="number"
       placeholder="Enter Phone Number"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label style="display:block;
              text-align:left;
              font-weight:bold;
              margin-bottom:5px;">
    Admin Secret Key
</label>

<input name="adminSecretKey"
       type="text"
       placeholder="Enter Admin Secret Key"
       required
       style="width:95%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:20px;">

<input name="role" type="hidden">

<p style="font-size:14px;color:#555;">
    Already have an account?
    <a href="index.jsp"
       style="color:#2563eb;
              text-decoration:none;
              font-weight:bold;">
        Sign In
    </a>
</p>

<input type="submit"
       value="Admin Sign Up"
       style="width:100%;
              padding:12px;
              background:#2563eb;
              color:white;
              border:none;
              border-radius:8px;
              font-size:16px;
              font-weight:bold;
              cursor:pointer;">

</form>

</div>

</body>
</html>