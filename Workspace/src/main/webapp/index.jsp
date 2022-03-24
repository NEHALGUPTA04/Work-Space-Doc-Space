<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Potta+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <title>WUV - Final - Project</title>
</head>
<style>
*{
    margin: 3px;
    padding:0;
    text-align: center;
    font-family: 'Times New Roman', Times, serif;
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
    height: 25px;width: 100px;

  }
  
  .button1:hover {
    background-color: white;
    color: rgb(35, 35, 100);
  }
  input{
    width: 200px;
  }
</style>

<body>
    <nav class="navbar">

        <div class="main">
            <img class="logo" src="/images/logo2.png"/>
            <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Doc-Space </h3>
        </div>
	        <br>
	        <h3>Sign in to your workspace</h3>
	        <form action="workSpaceSignIn" method="post">
            <label for="email">
                <h5>Enter your Student's ID</h5>
            </label> <br>
            <input class="email" type="text" placeholder="doc@space.com" id="workSpaceName" name="studId"> <br>
			
            <label for="email">
                <h5>Enter your name</h5>
            </label> <br>
            <input class="email" type="text" placeholder="John Jay" id="studentName" name="studName"> <br>
            <input type="submit" value="Continue &rarr;" class="button button1">
        	</form>
	        <br>
	        <h6 style="font-family:'Times New Roman', Times, serif">Don't Know your workspace URL? <a class="anchor1"
	                href="getAllWork"> Find your workspaces</a></h6>
	        <h6 style="font-family:'Times New Roman', Times, serif">Looking to create a new workspace instead?
	              <A HREF="createnew">Create a new Workspace</A></h6>
                  <br><br><br>
            <h6 class = "exist">Already Using Doc-Space ? <br> Sign in to existing workspace</h6>
            

    </nav>


</body>

</html>