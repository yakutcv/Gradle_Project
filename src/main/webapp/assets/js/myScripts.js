
jQuery(document).ready(function() {
	
       /* Fullscreen background*/


    $.backstretch("assets/img/backgrounds/1.jpg");
    
        /*Login form validation*/

    $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.login-form').on('submit', function(e) {
    	
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	
    });
    
        /*Registration form validation*/

    $('.registration-form input[type="text"], .registration-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.registration-form').on('submit', function(e) {
    	
    	$(this).find('input[type="text"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	
    });

});


//ajax post and get
function checkPatient(event){

    var firstName = $('#form-first-name').val();
    var lastName =  $('#form-last-name').val();
    var date = $('#datetimepicker4').val();
    var id = $('#updatePatient').val();

    $.get('AddPatient',{'id':id,'name':firstName,'lastName':lastName,'birthDate':date}, function (data) {
        switch (data) {
            case 'Same': {
                event.preventDefault();
               /* $('#error_message').css({'display': 'inline'});*/
                /* $('#error_message').html("Patient " + firstName + " " + lastName + " already exist!");*/
                $().toastmessage('showToast', {
                    text: "Patient " + firstName + " " + lastName + " already exist!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {console.log("toast is closed ...");
                    }
                });
                break;
            }

            case 'Invalid_name': {
                 event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid name " + firstName + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");
                    }
                });
                break;
            }

            case 'Invalid_last_name': {
                event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid last name " + lastName + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");}
                });
                break;
            }

            case 'Invalid_birth_date': {
                event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid birth date" + date + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");
                    }
                });
                break;
            }
            default :{
                if (id){
                    $.post('EditPatientController',{'id':id,'name':firstName,'lastName':lastName, 'birthDate':date});
                    window.location.replace("/Patients");
                    break;
                }

                $.post('AddPatient',{'name':firstName,'lastName':lastName, 'birthDate':date});
                window.location.replace("/Patients");
                break;
                }
            }
    });
}


function checkAnalysis(event) {
    var type = $('#inputType').val();
    var report = $('#inputReport').val();
    var date = $('#datetimepicker2').val();
    var id = $('#patientId').val();
    $.get('CheckerAnalysis',{'id':id,'type':type,'report':report,'date':date}, function (data) {
        switch (data){
            case 'invalid_type': {
                event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid type " + type + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");
                    }
                });
                break;
            }

            case 'Invalid_date': {
                event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid date " + date + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");
                    }
                });
                break;
            }

            case 'Invalid_report': {
                event.preventDefault();
                $().toastmessage('showToast', {
                    text: "Invalid report " + report + " .Please retry your input!",
                    sticky: false,
                    position: 'top-center',
                    type: 'error',
                    inEffectDuration: 600,
                    stayTime: 2000,
                    close: function () {
                        console.log("toast is closed ...");
                    }
                });
                break;
            }
            default :
                $.post('AddAnalyzes',{'id':id,'type':type,'report':report,'date':date});
                window.location.replace("AllAnalyzes?id="+id);
                break;
        }
    });
}
