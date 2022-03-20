<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
*{
    margin: 3px;
    padding:0;
    text-align: center;
    justify-content: center;
    align-items: center;
    font-family: 'Times New Roman', Times, serif;
    font-size:x-large;
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
<form action="insertStud">
	<table>
		<tr>
			<td>Name of Student : </td>
			<td><input type="text" name="studName"></td>
		</tr>
		<tr>
			<td> <input type="submit" value="Add"> </td>
		</tr>
	</table>
</form>
</body>
</html>