<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function abc() {
var x;
x=new XMLHttpRequest();//0
x.open("GET", "sample.jsp", true);//1
x.send();//2
x.onreadystatechange=function(){
	if(x.readyState==4 && x.status==200){
		document.getElementById("id1").innerHTML=x.responseText;
	}
};
}

</script>

</head>
<body>
<input type="submit" onclick="abc()">
<div id="id1"></div>

</body>
</html>