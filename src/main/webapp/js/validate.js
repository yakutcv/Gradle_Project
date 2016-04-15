$().ready(function(){


$('addPatientForm').validate({

    rules : {
        name : {
            required : true,
            rangelength : [2, 20]
        },
        lastName : {
            required : true,
            rangelength : [2, 20]
        },

        birthDate : {
            required : true,
            data : true
        }
    },

    messages : {
        name : {
            required : "Please enter your first name",
            rangelength : "Your first name must consist at lest 2 and maximum 20 characters"
        },
        lastName : {
            required : "Please enter your last name",
            rangelength : "Your first name must consist at lest 2 and maximum 20 characters"
        },
        birthDate : {
            required : "Please enter your birth date",
            data : "Birth dare must be in next format: DD/MM/YYYY"
        }
    }
})

















});