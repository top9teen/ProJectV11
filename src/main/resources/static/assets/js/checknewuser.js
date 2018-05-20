function fncSubmit()
{

	if(document.welcome.username.value == "" )
	{
		alert('Please input Username');
		document.welcome.username.focus();
		return false;
	}	
	
	if(document.welcome.password.value == "" )
	{
		alert('Please input Password');
		document.welcome.password.focus();		
		return false;
	}	

	if(document.welcome.repassword.value == "")
	{
		alert('Please input Confirm Password');
		document.welcome.repassword.focus();		
		return false;
	}	

	if(document.welcome.password.value != document.welcome.repassword.value)
	{
		alert('Confirm Password Not Match');
		document.welcome.repassword.focus();		
		return false;
	}	
		document.welcome.submit();

    }

//Script to open and close sidebar
function w3_open() {
	document.getElementById("mySidebar").style.display = "block";
	document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
	document.getElementById("mySidebar").style.display = "none";
	document.getElementById("myOverlay").style.display = "none";
}
function fncSubmit() {
	if (document.gotohome.email.value == "") {
		alert('Please input Email');
		document.gotohome.username.focus();
		return false;
	}
	if (document.gotohome.password.value == "") {
		alert('Please input password');
		document.gotohome.password.focus();
		return false;
	}
}