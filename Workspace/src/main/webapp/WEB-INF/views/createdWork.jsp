<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title class = "title1">Congratulations your Workspace has been created!!</title>
</head>

<style>
*{
    margin: 10px;
    padding:0;
    text-align: center;
    justify-content: center;
    align-items: center;
     font-family: 'Piazzolla', serif;
    font-size:x-large;

}
.header h1{
    font-size: large;
    font-style: italic;
}
.img1{
    height:300px;
    width:500px;
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
<img class = "img1" src="/Workspace/src/main/webapp/images/added.jpg" alt="">
<h1>WorkSpace created</h1>
<h3><a href="addMember">Add Members</a></h3>
</body>
</html>