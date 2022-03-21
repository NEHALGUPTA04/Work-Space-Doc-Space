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
    <div class="main">
        <img class="logo" src="/Workspace/src/main/webapp/images/logo2.png"/>
        <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Doc-Space </h3>
    </div>
    <img class = "img1" src="/Workspace/src/main/webapp/images/added1.jpg" alt="">
<h1>Congratulations your WorkSpace has been created!!</h1> <br>
<p>
    <h5>
        Experience more better with a team. <br>
        Want to add members to your team ?
    </h5>
</p>
<h5><a href="addMember">Add Members</a></h5>
<p>
    All your work will be shared within yoour team  <br>
    Your all documents remain safe here!!
</p>
</body>
</html>