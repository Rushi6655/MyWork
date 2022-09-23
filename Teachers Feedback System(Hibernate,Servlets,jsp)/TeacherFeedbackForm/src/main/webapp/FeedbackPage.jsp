<%@page import="DTO.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STUDENT FEEDBACK</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script language="javascript" >
function fun3()
{
	var dname=document.studentfeedback.dname.value;
	var tname=document.studentfeedback.tname.value;
	var year=document.studentfeedback.year.value;
	var sam=document.studentfeedback.sam.value;
	var sub=document.studentfeedback.sub.value;
	if(dname=="")
	{
		alert("First Department name must be filled");
		return false;
	}
	if(tname=="")
	{
		alert("First Teacher name must be filled");
		return false;
	}
	if(year=="")
	{
		alert("First year must be filled");
		return false;
	}
	if(sam=="")
	{
		alert("First sam must be filled");
		return false;
	}
	if(sub=="")
	{
		alert("First sub must be filled");
		return false;
	}
}
function f1() {
	alert("Successfully Submitted The Feedback");
	
}
function f2() {
	alert("No Student with inserted ID!");
	
}
</script>
</head>
<body style="background-color: #cef4ff;">
	<%
		String message=null;
		message=(String)request.getAttribute("message");
		if(message!=null && message.equals("Insert Successfull")){
	%>
		<script type="text/javascript">
			f1();
		</script>	
	<%
		}
		else if(message!=null && message.equals("-1")){
	%>
		<script type="text/javascript">
			f2();
		</script>
	<%
		}
	%>


<form name="studentfeedback" action ="StudentFeedBack" onsubmit="return fun3()" method="post">
<center><h1>Welcome To Student Feedback Section</h1>
<br>
<br>
<h3><u>STUDENT FEEDBACK</u></h3></center>
<br>
<table border="0" cellspacing="0" cellpadding=10 >
<tr>
	<th>Enter Your Roll No</th>
	<th><input type="text" name="sid"></th>
</tr>
<tr>
	<th colspan=2 align=left>1. Department :</th>
	<th colspan=2 align=left><select name="dname" size="1" >
		<option value="">
		<option value="Computer">Computers
		<option value="Mechanical">Mechanical
		<option value="I.T.">Information Technology
		<option value="Electrical">Electrical
		</select></th>
</tr>
<tr>
	<th colspan=2 align=left>2. Name of teacher :</th>
	<th colspan=2 align=left><select name="tname" size="1">
		<option value="">
	   <%
	   	List<Teacher> list=(List<Teacher>)request.getAttribute("list");
	    for(Teacher t:list){
	   %>
		
		<option value=<%=t.getTid() %>> <%=t.getName() %>
		<%} %>
		</option>
   		</select></th>
	   	
</tr>
<tr>
	<th colspan=2 align=left>3. Year :</th>
	<th colspan=2 align=left><select name="year" size="1">
		<option value="">
		<option value="1">F.E.
		<option value="2">S.E.
		<option value="3">T.E.
		<option value="4">F.Y.
		</select></th>
</tr>
<tr>
	<th colspan=2 align=left>4. Sam :</th>
	<th colspan=2 align=left><select name="sam" size="1">
		<option value="">
		<option value="1">I
		<option value="2">II
		</select></th>
</tr>
<tr>
	<th colspan=2 align=left>5. Subject :</th>
	<th colspan=2 align=left><select name="sub" size="1">
		<option value="">
		<option value="SS">SS
		<option value="DAA">DAA
		<option value="PP">PP
		<option value="HICU">HICU
		<option value="MIS">MIS</option>
		</select></th>
</tr>
</table>

<h6>Indicate the perceived performance of the teacher by <u><b>selecting</b></u> only one
	only one of the four radio buttons.</h6>
<br>
<h6>A. Communication skills (i.e. Teacher's ability to communicate the subject clearly and audibly)</h6><br><br>

<table border="0" cellspacing="0" cellpadding="10">
<tr>
	<td colspan=2 align=left><input type=radio name="A" value="1" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="A" value="2"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="A" value="3"> Good </td>
	<td colspan=2 align=left><input type=radio name="A" value="4"> Fair </td>
</tr>
</table>
<br><br>
<h6>B. Ability to explain subject matter and clear doubts<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="B" value="1" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="B" value="2"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="B" value="3"> Good </td>
	<td colspan=2 align=left><input type=radio name="B" value="4"> Fair </td>
</tr>
</table>
<br><br>
<h6>C. Presentation (viz. the Blackboard/Power point/OHP <u><b>whichever</b></u> used while teaching) is clear, organised and easily readable.<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="C" value="1" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="C" value="2"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="C" value="3"> Good </td>
	<td colspan=2 align=left><input type=radio name="C" value="4"> Fair </td>
</tr>
</table>
<br><br>
<h6>D. Teaching Methodology (i.e. teaching pace, examples and illustrations used and handling of topics)</h6><br><br>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="D" value="1" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="D" value="2"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="D" value="3"> Good </td>
	<td colspan=2 align=left><input type=radio name="D" value="4"> Fair </td>
</tr>
</table>
<br><br>
<h6>E. Overall Interest created in the subject<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="E" value="1" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="E" value="2"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="E" value="3"> Good </td>
	<td colspan=2 align=left><input type=radio name="E" value="4"> Fair </td>
</tr>
</table>
<br><br>
<h6>F. Regular and Punctual in conducting classes<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="F" value="1" checked> Always </td>
	<td colspan=2 align=left><input type=radio name="F" value="2"> Mostly </td>
	<td colspan=2 align=left><input type=radio name="F" value="3"> Sometimes </td>
	<td colspan=2 align=left><input type=radio name="F" value="4"> Never </td>
</tr>
</table>
<br><br>
<h6>G. Firm and Maintains class Discipline<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="G" value="1" checked> Always </td>
	<td colspan=2 align=left><input type=radio name="G" value="2"> Mostly </td>
	<td colspan=2 align=left><input type=radio name="G" value="3"> Sometimes </td>
	<td colspan=2 align=left><input type=radio name="G" value="4"> Never </td>
</tr>
</table>
<br><br>
<h6>H. Attitude towards student (i.e. with regards being approachable, providing guidance, advice and counseling)<br><br></h6>
<table border="0" cellspacing="0" cellpadding=10>
<tr>
	<td colspan=2 align=left><input type=radio name="H" value="1" checked> Highly Concerned </td>
	<td colspan=2 align=left><input type=radio name="H" value="2"> Concerned </td>
	<td colspan=2 align=left><input type=radio name="H" value="3"> Helpful </td>
	<td colspan=2 align=left><input type=radio name="H" value="4"> Indifferent </td>
</tr>
</table>
<br><br>
<table border="0" cellspacing=5 cellpadding=10 >
<tr>
	<td colspan=2 align=center><input type="reset" value="RESET" ></td>
	<td colspan=2 align=center><input type="submit" value="SUBMIT" style="background-color: blue; color: white;"></td>
</tr>
</table>
</form>
</body>
</html>