
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
function fncSubmit2() {
	if (document.gotohome.groupType.value == "") {
		alert('Please input Year');
		document.gotohome.groupType.focus();
		return false;
	}
	if (document.gotohome.carMake.value == "") {
		alert('Please input Brand');
		document.gotohome.carMake.focus();
		return false;
		
	}
	if (document.gotohome.carMake2.value == "") {
		alert('Please input CarModel');
		document.gotohome.carMake2.focus();
		return false;
	}
}