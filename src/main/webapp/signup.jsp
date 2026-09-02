<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VizagGatedCommunity</title>
</head>

<body style="margin:0;
             font-family:Arial, sans-serif;
             background:linear-gradient(135deg,#0f172a,#2563eb);
             display:flex;
             justify-content:center;
             align-items:center;
             min-height:100vh;">

<div style="background:white;
            width:420px;
            padding:25px;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);
            text-align:center;">

<h2 style="color:#2563eb;
           margin-bottom:10px;">
    CREATE YOUR ACCOUNT
</h2>

<p style="color:#666;
          font-size:14px;
          margin-bottom:25px;">
    Join the Complaint Tracker to report and follow issues in your community
</p>

<form action="signup" method="post">

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
       value="Sign Up"
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