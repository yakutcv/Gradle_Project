
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

function checkEqualsPatient(event){
    var fistName = $('#form-first-name').val();
    var lastName =  $('#form-last-name').val();
    var date =  $('#datetimepicker4').val();
    $.get('AddPatient',{'name':fistName,'lastName':lastName, 'birthDate':date}, function (data) {
        if(data == 'Same') {
            event.preventDefault();
            $('#error_message').css({'display':'inline'});

        } else{
            $.post('AddPatient',{'name':fistName,'lastName':lastName, 'birthDate':date});
            window.location.replace("/Patients")
        }
    });
}