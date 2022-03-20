<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in Failed</title>
</head>
<style>
*{
    margin: 25px;
    padding:0;
    text-align: center;
    justify-content: center;
    align-items: center;
    font-family: 'Times New Roman', Times, serif;
    font-size:xx-large;
}
.img1{
    width:200;
    height:200px;
}
 .logo{
    height: 30px;
    width: 30px;
}

.main{
    display: flex;
    justify-content: center;
}

</style>
<body>
<img class = "img1" src="/Workspace/src/main/webapp/images/fail.jpg" alt="">
<h1 style="color: red">Invalid Workspace name!!!</h1>
<jsp:include page="/index.jsp"></jsp:include>
</body>
</html>