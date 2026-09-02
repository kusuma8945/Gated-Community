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
             height:100vh;">

<div style="background:white;
            border:none;
            width:350px;
            padding:25px;
            text-align:center;
            border-radius:15px;
            box-shadow:0 8px 25px rgba(0,0,0,0.25);">

<h2 style="color:#2563eb;
           margin-bottom:10px;">
    Vizag Gated Community
</h2>

<h3 style="color:#333;
           margin-bottom:30px;">
    SIGN IN
</h3>

<form action="signin" method="post">

<label for="userName"
       style="display:block;
              text-align:left;
              margin-bottom:5px;
              font-weight:bold;">
    UserName
</label>

<input name="userName"
       type="text"
       placeholder="Enter UserName"
       required
       style="width:90%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:15px;">

<label for="password"
       style="display:block;
              text-align:left;
              margin-bottom:5px;
              font-weight:bold;">
    Password
</label>

<input name="password"
       type="password"
       placeholder="Enter Password"
       required
       style="width:90%;
              padding:10px;
              border:1px solid #ccc;
              border-radius:8px;
              margin-bottom:20px;">

<p style="font-size:14px;color:#555;">
    Don't have an account?
    <a href="signup.jsp"
       style="color:#2563eb;text-decoration:none;font-weight:bold;">
       Sign Up
    </a>
    |
    <a href="adminSignUp.jsp"
       style="color:#2563eb;text-decoration:none;font-weight:bold;">
       Admin SignUp
    </a>
</p>

<input type="submit"
       value="Sign In"
       style="width:95%;
              padding:12px;
              background:#2563eb;
              color:white;
              border:none;
              border-radius:8px;
              font-size:16px;
              cursor:pointer;
              font-weight:bold;">

</form>

</div>

</body>
</html>