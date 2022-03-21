<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in here</title>
</head>
<style>

*{
    margin: 3px;
    padding:0;
    text-align: center;
    justify-content: center;
    align-items: center;
    font-family: 'Piazzolla', serif;
    font-size:x-larger;
}
body{
    margin-top: 54px;
}
 .logo{
    height: 30px;
    width: 30px;
}

.main{
    display: flex;
    justify-content: center;
}
.logo1{
    width:350px;
    height:300px;
}

</style>
<body>

    <div class="main">
        <img class="logo" src="/Workspace/src/main/webapp/images/logo2.png"/>
        <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Doc-Space </h3>
    </div>
    <br>
    <img class="logo1" src="/Workspace/src/main/webapp/images/Welcome-back.jpg"/>  <br><br>
<h2 style="color: black">Welcome ${USERNAME } to Your Workspace !!</h2>
</body>
</html>