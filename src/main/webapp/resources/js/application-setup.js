		$(function () {
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
			$(document).ready(function(){
            var baseUrl = false ;
            var logFilePath = false;
            var smtpServer = false;
            var smtpPort = false;
            var dbHostName = false;
            var dbPort = false;
            var dbUserName = false;
            var dbPassword = false;
            var dbName = false;
            var dbValidated = false;
            var ldapHostName = false;
            var ldapPort = false;
            var ldapUserName = false;
            var ldapPassword = false;
            var ldapBaseDN = false;
            var ldapAdditionUserDN = false;
            var ldapAdministration = false;
            var dbValidated = false;
	        $('#inpBaseUrl').keyup(function(){	 
				validatBaseUrl(this.value);
	        });
			$('#inpLogFilePath').keyup(function(){
				validateLogFilePath(this.value);
			});
			$('#inpSMTPServer').keyup(function(){
				validateSMTPServer(this.value);
			});
			$('#inpSMTPPort').keyup(function(){
				validateSMTPPort(this.value);
			});
			$('#inpDBHostName').keyup(function(){
				validateDBHostName(this.value);
			});
			$('#inpDBPort').keyup(function(){
				validateDBPort(this.value);
			});

			$('#inpDBUserName').keyup(function(){
				validateDBUserName(this.value);
			});
			$('#inpDBPassword').keyup(function(){
				validateDBPassword(this.value);
			});
			$('#inpDBName').keyup(function(){
				validateDBName(this.value);
			});
			$('#validateDBConfig').click(function(){
				validateDatabaseConfiguration()
			});
			$('#inpLdapHostName').keyup(function(){
				validateLdapHostName(this.value);
			});
			$('#inpLdapPort').keyup(function(){
				validateLdapPort(this.value);
			});
			$('#inpLdapUserName').keyup(function(){
				validateLdapUserName(this.value);
			});
			$('#inpLdapPassword').keyup(function(){
				validateLdapPassword(this.value);
			});
			$('#inpLdapBaseDN').keyup(function(){
				validateLdapBaseDN(this.value);
			});
			$('#inpLdapAdditionalUserDN').keyup(function(){
				validateLdapAdditionalUserDN(this.value);
			});
			$('#inpLdapAdministration').keyup(function(){
				validateLdapAdministration(this.value);
			});
	        function validatBaseUrl(value){
				console.log(value.length);
	            if(value.match("^https://")){
                    $('#iBaseUrl').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    baseUrl = true;
	            }
	            else {
                    $('#iBaseUrl').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    baseUrl = false;
	            }
			}
			function validateLogFilePath(value){
				if(value.length != 0){
                    $('#iLogFilePath').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    logFilePath = true;
				}
				else{
                    $('#iLogFilePath').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    logFilePath = false;
				}
			}
			function validateSMTPServer(value){
				if(value.length != 0){
                    $('#iSMTPServer').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    smtpServer = true;
				}
				else{
                    $('#iSMTPServer').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    smtpServer = false;
				}
			}
			function validateSMTPPort(value){
				if(value.length != 0){
                    $('#iSMTPPort').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    smtpPort = true;
				}
				else{
                    $('#iSMTPPort').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    smtpPort = false;
				}
			}
			
			function validateDBHostName(value){
				if(value.length != 0){
                    $('#iDBHostName').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    dbHostName = true;
                    if( $('#inpDBHostName').val() != value){
                    	dbValidated = false;
                    }

				}
				else{
                    $('#iDBHostName').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    dbHostName = false;
				}
			}
			
			function validateDBPort(value){
				if(value.length != 0){
                    $('#iDBPort').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    dbPort = true;
                    if( $('#inpDBPort').val() != value){
                    	dbValidated = false;
                    }

				}
				else{
                    $('#iDBPort').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    dbPort = false;
				}
			}
			function validateDBName(value){
				if(value.length != 0){
                    $('#iDBName').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    dbName = true;
                    if( $('#inpDBName').val() != value){
                    	dbValidated = false;
                    }

				}
				else{
                    $('#iDBName').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    dbName = false;
				}
			}
			function validateDBUserName(value){
				if(value.length != 0){
                    $('#iDBUserName').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    dbUserName = true;
                    if( $('#inpDBUserName').val() != value){
                    	dbValidated = false;
                    }

				}
				else{
                    $('#iDBUserName').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    dbUserName = false;
				}
			}
			function validateDBPassword(value){
				if(value.length != 0){
                    $('#iDBPassword').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    dbPassword = true;
                    if( $('#inpDBPassword').val() != value){
                    	dbValidated = false;
                    }

				}
				else{
                    $('#iDBPassword').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    dbPassword = false;
				}
			}
			function validateLdapHostName(value){
				if(value.length != 0){
                    $('#iLdapHostName').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapHostName = true;
				}
				else{
                    $('#iLdapHostName').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapHostName = false;
				}
			}
			function validateLdapPort(value){
				if(value.length != 0){
                    $('#iLdapPort').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapPort = true;
				}
				else{
                    $('#iLdapPort').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapPort = false;
				}
			}
			function validateLdapUserName(value){
				if(value.length != 0){
                    $('#iLdapUserName').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapUserName = true;
				}
				else{
                    $('#iLdapUserName').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapUserName = false;
				}
			}
			function validateLdapPassword(value){
				if(value.length != 0){
                    $('#iLdapPassword').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapPassword = true;
				}
				else{
                    $('#iLdapPassword').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapPassword = false;
				}
			}
			function validateLdapBaseDN(value){
				if(value.length != 0){
                    $('#iLdapBaseDN').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapBaseDN = true;
				}
				else{
                    $('#iLdapBaseDN').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapBaseDN = false;
				}
			}
			function validateLdapAdditionalUserDN(value){
				if(value.length != 0){
                    $('#iLdapAdditionalUserDN').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapAdditionUserDN = true;
				}
				else{
                    $('#iLdapAdditionalUserDN').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapAdditionUserDN = false;
				}
			}
			function validateLdapAdministration(value){
				if(value.length != 0){
                    $('#iLdapAdministration').removeClass('bg-danger fa-exclamation').addClass('bg-success fa-check');
                    ldapAdministration = true;
                }
				else{
                    $('#iLdapAdministration').removeClass('bg-success fa-check').addClass('bg-danger fa-exclamation');
                    ldapAdministration = false;
				}
            }
			
			function validateDatabaseConfiguration(){
				if(!dbValidated && dbHostName && dbPort && dbUserName && dbPassword && dbName){
					var params = {"host": $("#inpDBHostName").val(), "port" : $("#inpDBPort").val(), "username": $("#inpDBUserName").val(), "password" : $("#inpDBPassword").val(), "databaseName" : $("#inpDBName").val()};
					$.post('/api/application-setup/validate-db', params, function(data){
						dbValidated = true;
						alert("Database Validated");
					}).fail(function(response){
						dbValidated = false;
						var json = JSON.parse(response.responseText);
						$("#error_msg").html(json.message);
						alert("Database not Validated");
					});
				}
			}
			
			
			
            $('#submitForm').click(function(e) {
                // reference to form object
            // var form = this;           
            	if(dbValidated){
            		alert("Kindly first validate Database configuration");
            		return false;
            	}
            	
                e.preventDefault();   // for stopping the default action of element 
                if(baseUrl && logFilePath && smtpPort && dbHostName &&
                		dbPort && dbUserName && dbPassword && dbName && ldapHostName &&
                		ldapPort && ldapUserName && ldapPassword && ldapBaseDN && ldapAdditionUserDN
                		&& ldapAdministration){
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
                    console.log(JSON.stringify);
                    $.ajax({
                        type: 'post', // method attribute of form
                        url: '/administrator/saveConfiguration',  // action attribute of form
                        dataType : 'json',
                        contentType : 'application/json',
                    // convert form data to json format
                        data : JSON.stringify(formData),
                    });
                } else{
                	alert('Fill all the mandatory fields to submit the form');
                }
           });
	    });

	