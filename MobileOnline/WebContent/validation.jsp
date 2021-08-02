function checkEmpty(data)
{
	if(data==undefined || data == null || data.trim() == '')
			return false;			
	return true;
}
function checkPwdLength(data)
{
	if(data==undefined && data == null || data.trim() == '')
			return false;
	else if(data.length<6)
			return false;			
	return true;
}
function checkMobileNo(data)
{
	if(data==undefined && data == null || data.trim() == '')
	    return false;	
	else if(Number.isInteger(data))
		return false;	
	else if(data.length!=10)  	
	    return false;			
	return true;
}
function checkAll()
{
	var uname=document.getElementById("userid").value;	
	if(checkEmpty(uname)==false)
	{
		alert("Username is not assigned or invalid data");
		return false;
	}	
	var pwd1=document.getElementById("pwd1").value;
	var pwd2=document.getElementById("pwd2").value;
	if(checkEmpty(pwd1)==false || checkEmpty(pwd2)==false || pwd1!=pwd2)
	{
		alert("Passsword not assigned or not matched.");
		return false;
	}
	var maleRB=document.getElementById("male");
	var femaleRB=document.getElementById("female");
	
	if(maleRB.checked==false && femaleRB.checked==false)
	{
		alert("Please select gender.");
		return false;
	}
	var sq=document.getElementById("secretquestion").value;
	if(checkEmpty(sq)==false)
	{
		alert("Please select question.");
		return false;
	}
	alert("you have registered succesfully");
	return true;	
}
function changepwd()
{
	var pwd1=document.getElementById("pwd1").value;
	var pwd2=document.getElementById("pwd2").value;
	if(checkEmpty(pwd1)==false || checkEmpty(pwd2)==false || pwd1!=pwd2)
	{
		alert("Passsword not assigned or not matched.");
		return false;
	}
	alert("Your password has been changed succesfully..");
}	

function addproduct()
{
alert("Product has been added successfully");
}

