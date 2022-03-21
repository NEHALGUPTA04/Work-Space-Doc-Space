<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Potta+One&display=swap" rel="stylesheet">
    <title>Create new Workspaces</title>
</head>
<style>
*{
    margin: 3px;
    padding:0;
    text-align: center;
    font-family: 'Piazzolla', serif;
    justify-content: center;
    align-items: center;
    font-size: x-large;
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
.input{
    width : 400px;
}
/* .header img{
    float: left;
    width: 100px;
    height: 100px;
}

.header h1 {
    position: relative;
    top: 18px;
    left: 10px;
} */

/* .navbar{

    text-align: center;
} */
.anchor1{
    color: rgb(23, 23, 172);
    
}
.anchor2{
    color: rgb(23, 23, 172);
}

.button1 {
    background-color: rgb(35, 35, 100);
    color: white;
    border: 2px solid rgb(35, 35, 100);
    height: 40px;width: 200px;
    font-size:x-large;

  }
  .img1{
      width: 400px;
      height: 220px;
  }
  
  .button1:hover {
    background-color: white;
    color: rgb(35, 35, 100);
  }
  .email{
    width: 200px;
  }
  .h1{
    font-size: small;
}
</style>
<body>
    <div class = container>
        
        <div class="main">
            <img class="logo" src="/Workspace/src/main/webapp/images/logo2.png"/>
            <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Doc-Space </h3>
        </div><br>
        
        <h2 class = "h2"> Want to use Doc-Space with different Team? <br>

             <br>Create a new workspace here </h2>
        <img class="img1" src="/Workspace/src/main/webapp/images/doc1.jpg"/> <br> <br>
        <p class  = p1>Enter Name of Your Workspace</p> <br>
        <form action="newWork" method="post">
        	<input class = "input" type="text" placeholder=" enter your work-space name" name="workSpaceName"> <br><br>
        	<input type="submit" value="Continue" class="button button1">
        </form>
        
    </div>
       <br>
<h6 class = "h1">
    Terms & Privacy <br> <br>
    Contact us

</h6>


</body>
</html>