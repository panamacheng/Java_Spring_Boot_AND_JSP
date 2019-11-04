var data = generatedata(500);
var theme='metro';
var pagerrenderer = function () {
                var element = $("<div style='margin-top: 5px; padding-top:3px; width: 100%; border-top: solid 1px #99bce8;text-align:right; height: 100%;'></div>");
                      var datainfo = $("#jqxGridFlex").jqxGrid('getdatainformation');
                var paginginfo = datainfo.paginginformation;
                var pagecount = paginginfo.pagescount;
                var leftButton = $("<div style='padding: 0px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
                leftButton.find('div').addClass('jqx-icon-arrow-left');
                leftButton.width(36);
                leftButton.jqxButton({ theme: theme });

                var rightButton = $("<div style='padding: 0px; margin: 0px 3px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
                rightButton.find('div').addClass('jqx-icon-arrow-right');
                rightButton.width(36);
                rightButton.jqxButton({ theme: theme });

                 var firstPageButton = $("<div style='padding: 0px; margin: 0px 3px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
                firstPageButton.find('div').addClass('jqx-icon-arrow-first');
                firstPageButton.width(36);
                firstPageButton.jqxButton({ theme: theme });

                var lastPageButton = $("<div style='padding: 0px; margin: 0px 3px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
                lastPageButton.find('div').addClass('jqx-icon-arrow-last');
                lastPageButton.width(36);
                lastPageButton.jqxButton({ theme: theme });
                 firstPageButton.appendTo(element);
                leftButton.appendTo(element);
                 rightButton.appendTo(element);
                lastPageButton.appendTo(element);
                var label = $("<div style='font-size: 11px; margin: 2px 3px; font-weight: bold; float: left;'></div>");
                
                label.appendTo(element);
                self.label = label;
                // update buttons states.
                var handleStates = function (event, button, className, add) {
                    button.on(event, function () {
                        if (add == true) {
                            button.find('div').addClass(className);
                        }
                        else button.find('div').removeClass(className);
                    });
                }

                if (theme != '') {
                    handleStates('mousedown', rightButton, 'jqx-icon-arrow-right-selected-' + theme, true);
                    handleStates('mouseup', rightButton, 'jqx-icon-arrow-right-selected-' + theme, false);
                    handleStates('mousedown', leftButton, 'jqx-icon-arrow-left-selected-' + theme, true);
                    handleStates('mouseup', leftButton, 'jqx-icon-arrow-left-selected-' + theme, false);

                    handleStates('mouseenter', rightButton, 'jqx-icon-arrow-right-hover-' + theme, true);
                    handleStates('mouseleave', rightButton, 'jqx-icon-arrow-right-hover-' + theme, false);
                    handleStates('mouseenter', leftButton, 'jqx-icon-arrow-left-hover-' + theme, true);
                    handleStates('mouseleave', leftButton, 'jqx-icon-arrow-left-hover-' + theme, false);
                }

                rightButton.click(function () {
                    $("#jqxGridFlex").jqxGrid('gotonextpage');
                });

                leftButton.click(function () {
                    $("#jqxGridFlex").jqxGrid('gotoprevpage');
                });

                firstPageButton.click(function () {
                     $("#jqxGridFlex").jqxGrid('gotopage', 2);
                });
                lastPageButton.click(function () {
                      $("#jqxGridFlex").jqxGrid('gotopage', pagecount);
                    
                });
				
				
        var pageBox = $("<input type='text' name='page-number' style='width: 20px; margin-right:10px; margin-left:7px; text-align: right; height: 12px; float:right' />");
     
          $(pageBox).blur(function (event) {
                 var val = $(this).val();
               $("#jqxGridFlex").jqxGrid('gotopage', parseInt(val)-1);
        });
		
		
    $("<span class='info' style='text-align:right'>Page: </span>").appendTo(element);
        pageBox.appendTo(element);
        
                
                return element;
     }

 var source = {
     localdata: data,
     datafields: [{
         name: 'firstname',
         type: 'string'
     }, {
         name: 'lastname',
         type: 'string'
     }, {
         name: 'productname',
         type: 'string'
     }, {
         name: 'date',
         type: 'date'
     }, {
         name: 'quantity',
         type: 'number'
     }, {
         name: 'price',
         type: 'number'
     }],
     datatype: "array"
 };

 var adapter = new $.jqx.dataAdapter(source);
 $("#jqxGridFlex").jqxGrid({
      width: '100%',
     height: '90%',
	 
	  filterable: true,
                selectionmode: 'multiplecellsextended',
				columnsresize: true,
			
                
     theme: 'metro',
     pageable: true,
     pagerrenderer: pagerrenderer,
     source: adapter,
     sortable: true,
     columns: [{
         text: 'Action',
         datafield: 'firstname',
         columngroup: 'Name',
          width: '90%'
     },   {
         text: 'Date',
         datafield: 'date',
         width: '10%',
		 
         cellsformat: 'MM-dd-yy'
     }]
 });
 $('#jqxGridFlex').on('filter', function () {
     alert("The Grid has been filtered");
 });
