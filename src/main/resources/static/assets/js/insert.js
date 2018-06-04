function insertConfirm() {
    //	console.log(warranty)
        
        var repairBean = {
                repairDateStr : $('#repairDate').val(),
                repairname : $('#exampleFormControlInput1').val(),
                repairAddress : $('#exampleFormControlTextarea1').val(),
                repairPhone : $('#exampleFormControlInput2').val(),
                repairEmail : $('#email').val(),
                repairWarranty : warranty,
                repairSerialnumber : $('#serialnumber').val(),
                repairType : $('#a').val(),
                repairProduct : $('#b').val(),
                repairWaste : $('#Waste').val(),
                repairDetail : $('#detail').val(),
                repairAppointment : $('#appointment').val(),
                
        }
    
        $.ajax({
            type : "POST",
            url : "/insertRepair",
            contentType : "application/json; charset=utf-8",
            data : JSON.stringify(repairBean),
            dataType : "json",
            success : function(msg) {
            console.log('Success')
             
            }
        });
        
    }