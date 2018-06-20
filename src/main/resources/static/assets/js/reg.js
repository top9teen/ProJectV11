	function black() {
	    var txt;
	    if (confirm("คุณต้องการจะยกเลิกหรือไม่")) {
	    	 window.location="/"; 
	    	
	    } 
	    document.getElementById("demo").innerHTML = txt;
	}
	function fncSubmit() {
		if(document.loanForm.age.value ==""){
			alert('Please input age');
			document.loanForm.age.focus();
			return false;
		}
		
		if(document.loanForm.telephoneNo.value ==""){
			alert('Please input telephoneNo');
			document.loanForm.telephoneNo.focus();
			return false;
		}
		if(document.loanForm.idcard.value ==""){
			alert('Please input idcard');
			document.loanForm.idcard.focus();
			return false;
		}
		if(document.loanForm.email.value ==""){
			alert('Please input email');
			document.loanForm.email.focus();
			return false;
		}
		if(document.loanForm.salary.value ==""){
			alert('Please input salary');
			document.loanForm.salary.focus();
			return false;
		}
	}
		
	
