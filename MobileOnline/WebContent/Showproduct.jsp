<%@page import="MobileModel.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*" %>
 <%@ page import="MobileModel.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show product</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/add.css">
<style>
.dropdown  input[type="submit"]:hover
{
	cursor:pointer;
	background:#ffc107;
	color:#000;
}

.dropdown input[type="submit"]
{
	border:none;
	outline:none;
	height:40px;
	background:#fb2525;
	color:#fff;
	font-size:18px;
	border-radius:3px;
	font-size:16px;
	font-family:sans-serif;
	width:80px;
}
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 80%;
}

th {
  text-align: left;
}
th, td {
  padding: 15px;
  text-align: left;
}
th, td {
  border-bottom: 1px solid #ddd;
}
tr:hover {background-color: #f5f5f5;}
tr:nth-child(even) {background-color: #f2f2f2;}
th {
  background-color: #4CAF50;
  color: white;
}
#category{
	width:100px;
	padding:7px;
	border:none;
	border-radius:3px;
	outline:0;
	margin-bottom:10px;
	
	}
</style>
</head>

 
<body>
<a href="admin.jsp" >
      <button style="border:none;
	                outline:none;
	                 height:40px;
	                 background:#fb2525;
	                 color:#fff;
	                 font-size:18px;
					 width:100px;
	                 border-radius:3px;
					 cursor:pointer;
	                ;">Back</button>
        </a>
<form name=show action="ShowProductServlet" method="get">
<div>

<div class="dropdown" >
<p align=center>
  <label  id="text">Choose Brand  :</label>
  <select id="category" name="category">
  <option value="Select">Select</option>
 
  <%
  String list="";
 
  if(request.getAttribute("allbrand")!=null)
   { 
	 
	   ArrayList<String> allBrand=(ArrayList<String>)request.getAttribute("allbrand");
	  
	   for(String val: allBrand)
	   {
		   list=list+"<option>"+val+"</option>";
	   }
	   
   }
  out.println(list);
  
  
  
  %>
  
</select>

<input type=submit value=Submit name=catg></p>
 
 
  
  
    <br><br>
</div>

<div>
<table id="products">
  <tr>
    <th>pid</th>
    <th>pname</th>
    <th>category</th>
    <th>brand</th>
    <th>ram</th>
    <th>rom</th>
    <th>processor</th>
    <th>battery</th>
    <th>price</th>
    <th>descrption</th>
  </tr>
  
  
 <%
 
 String record="";
 if(request.getAttribute("allProducts")!=null)
 { 
  ArrayList<ProductModel> allProduct=(ArrayList<ProductModel>)request.getAttribute("allProducts");   
   for(ProductModel s: allProduct)
    {  
 	   record=record+"<tr>";
 	   record=record+"<td>"+s.getPid()+"</td><td>"+s.getPname()+"</td><td>"+s.getCategory()+"</td><td>"+s.getBrand()+"</td><td>"+s.getRam()+"</td><td>"+s.getRom()+"</td><td>"+s.getProcessor()+"</td><td>"+s.getBattery()+"</td><td>"+s.getPrice()+"</td><td>"+s.getDescrptn()+"</td>"; 	   
 	   record=record+"<td><a href='EditServlet?oper=edit&pid="+s.getPid()+"'>Edit</a></td>";
 	   record=record+"<td><a href='DeleteServlet?oper=delete&pid="+s.getPid()+"'>Delete</a></td>";
 	   record=record+"</tr>";
    }
 }
 out.println(record);
 
 
 
 
 %> 

   
  
</table>
<br><br>
</p>
</div>
</form>
</body>
</html>
</body>
</html>