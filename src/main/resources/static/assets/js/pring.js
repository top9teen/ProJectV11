function fncSubmit()
{
 
	if(document.prig.pp.value == "" )
	{
		alert('Please input monny');
		document.prig.pp.focus();
		return false;
	}	
	
	if(document.prig.pp.value < 50000 && document.prig.pp.value > 1000000 )
	{
		alert('Please input monny');
		document.prig.pp.focus();
		return false;
	}	

		document.welcome.submit();

    }