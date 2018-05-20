function clearForm()
{
	$('input').val('');
	$('#registration_year').val('');
	$('#brand').val('');
	$('#model').val('');
}
$('#registration_year').on('change', function() {
	$('#brand').empty().append($('<option/>').val("").html("กรุณาเลือก"));
	$('#model').empty().append($('<option/>').val("").html("กรุณาเลือก"));
	$('.calculate-step2').hide();
	$('.calculate-step3').hide();
	
	$.ajax({  
		type: "POST",  
		url: 'loadBrandCalculate.action'+'?form.carYear='+$(this).val(), 
		success: function(res){
			var prevGroup, $group = $();
			$.each( res.comboBrand, function( index, data ){
			    //$('#brand').append($('<option/>').val(data.code).html(data.desc));
			    
			    values = data.desc.split(' - '),
			    group = values[0];
			    
			    if (group != prevGroup) {
			        $group = $('<optgroup />', { label: group }).appendTo('#brand');
			    }
			    
			    $group.append($('<option />', {
			        text: values[1],
			        value: data.code
			    }));

			    prevGroup = group;
			    
			});
	        $group = $('<optgroup />', { label: 'Other' }).appendTo('#brand');
		    $group.append($('<option />', {
		        text: '...',
		        value: 'OTHERS'
		    }));
			
			return false;
	 	}
	 });	
});
	
$('#brand').on('change', function() {
	
	$('#model').empty().append($('<option/>').val("").html("กรุณาเลือก"));
	$('.calculate-step2').hide();
	$('.calculate-step3').hide();
	if($(this).val()=='OTHERS'){
		$('#ouibounce-modal').show();
	}else{
		$.ajax({
			type: "POST",  
			url: 'loadModelCalculate.action'+'?form.carYear='+$('#registration_year').val()+'&form.carMake='+$(this).val(), 
			success: function(res){
				$('#model').empty().append($('<option/>').val("").html("กรุณาเลือก"));
				$.each( res.comboModel, function( index, data ){
				    $('#model').append($('<option/>').val(data.code).html(data.desc));
				});
				$('#model').append($('<option/>').val('OTHERS').html("Other"));
				
				return false;
		 	}
		});	
	}
});

$('#model').on('change', function() {
	$('.calculate-step2').hide();
	$('.calculate-step3').hide();
	if($(this).val()=='OTHERS'){
		$('#ouibounce-modal').show();
	}
});

$('#btn-step1').click(function(e) {
	var form = $('#calculate-frm');
	if($('#registration_year').val() == ""){
		alert("กรุณาระบุปีที่จดทะเบียนด้วยค่ะ");
		$('#registration_year').focus();
	}else if($('#brand').val() == ""){
		alert("กรุณาระบุยี่ห้อด้วยค่ะ");
		$('#brand').focus();
	}else if($('#model').val() == ""){
		alert("กรุณาระบุรุ่นด้วยค่ะ");
		$('#model').focus();
	}else{
		$.ajax({
			type: "POST",  
			url: 'calculateCalculate.action',
			data: form.serialize(),
			success: function(res){
				$('#carPriceListId').val(res.jsonData.carPriceListId);
				$('#car_loan').val(res.jsonData.carPrice);
				$('#loan_amount').val("");
			    $('.calculate-step2').show();
	
				return false;
		 	}
		});	
	}
});