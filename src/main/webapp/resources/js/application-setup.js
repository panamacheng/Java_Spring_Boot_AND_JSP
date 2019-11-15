var dbValidated = false;
function validateDatabaseConfiguration(){			
	if(!dbValidated){

		var hostEl = $("#inpDBHostName");
		var portEl = $("#inpDBPort");
		var userEl = $("#inpDBUserName");
		var pwdEl = $("#inpDBPassword");
		var dbEl = $("#inpDBName");

		var hostValid = myvalidator.element(hostEl);
		var portValid = myvalidator.element(portEl);
		var userValid = myvalidator.element(userEl);
		var pwdValid = myvalidator.element(pwdEl);
		var dbValid = myvalidator.element(dbEl);

		if( hostValid && portValid && userValid && pwdValid && dbValid){
			var params = {"host": hostEl.val(), "port" : portEl.val(), "username": userEl.val(), "password" : pwdEl.val(), "databaseName" : dbEl.val()};
			$.post('/api/setup/validate-db', params, function(data){
				dbValidated = true;
				showMessage("Database Validated");
			}).fail(function(response){
				dbValidated = false;
				var json = JSON.parse(response.responseText);
				showError(json.message);
			});
		}else{
			showError("Kindly provide database configuration to load");
		}

	}
}

function showError(error){
	$("#success_cont").hide();
	$("#error_cont").show();
	$("#error_msg").text(error);
	$('html, body').animate({scrollTop: $("#error_cont").offset().top}, 1000)
}

function showMessage(msg){
	$("#error_cont").hide();
	$("#success_cont").show();
	$("#success_msg").text(msg);
	$('html, body').animate({scrollTop: $("#success_cont").offset().top}, 1000)
}

$.validator.setDefaults({
	  debug: true,
	  success: "bg-success fa-check"
	});

	$.validator.methods.path = function( value, element ) {
	  return this.optional( element ) || /^(([a-zA-Z]\:)|(\\))(\\{1}|((\\{1})[^\\]([^/:*?<>"|]*))+)$/.test( value );
	}
	$.validator.methods.urlWithoutHttp = function(value, element, param) {
		return this.optional(element) || /^(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)*(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(value);
	}
var myvalidator =	$( "#setupForm" ).validate(
			{ // initialize the plugin
				errorElement: "em",
				errorPlacement: function(error, element){
					
				},
				highlight: function ( element ) {
					var cont = $(element).siblings(".input-group-append").find(".input-group-text");
					var iEl = cont.children( "i" )[ 0 ];
					if ( !iEl ) {
						cont.append( "<i class='fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2'></i>" );
					}else{
						$(iEl).removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
					}
				},
		        unhighlight: function (element) {
		        	//console.log(element)
					var cont = $(element).siblings(".input-group-append").find(".input-group-text");
					var iEl = cont.children( "i" )[ 0 ];
					if ( !iEl ) {
						cont.append( "<i class='fa bg-success text-white fa-check p-2 rounded-circle ml-2'></i>" );
					}else{
						$(iEl).removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
					}
		        }
			}
	);
	$('[data-rule-required]').trigger("blur");

$(document).ready(function(){



			
            $('#submitForm').click(function(e) {
                // reference to form object
            // var form = this;
            	
            	if(!myvalidator.valid()){
            		showError('Fill all the mandatory fields to submit the form');
            		return false;
            	}
            	
            	if(!dbValidated){
            		showError("Kindly first validate Database configuration");
            		return false;
            	}
            	
            	e.preventDefault();   // for stopping the default action of element 

                	var formData = {}    // map that will hold form data
                    $('form').each(function() {   //iterate over each form in the page  
                        var thisForm = this;
                        //iterate over all the elements of form
                        $.each(this, function(i, v){
                            var input = $(v);
                            //populating form data as key value pair
                            formData[input.attr("name")] = input.val()
                        });
                      });              

//                	console.log(JSON.stringify(formData));
                    
                    $.post('/api/setup/saveConfiguration', formData, function(data){
                    	showMessage("Configuration saved!");
						document.location.href = "/";
					}).fail(function(response){
						var json = JSON.parse(response.responseText);
						showError(json.message);
					});
                    
           });

    
        	$('#ri-grid').gridrotator({
				rows: 3,
				columns: 15,
				animType: 'fadeInOut',
				animSpeed: 1000,
				interval: 600,
				step: 1,
				w320: {
					rows: 3,
					columns: 4
				},
				w240: {
					rows: 3,
					columns: 4
				}
			});


});

	