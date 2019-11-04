function generatedata(rowscount, hasNullValues) {
    // prepare the data
    var data = new Array();
    if (rowscount == undefined) rowscount = 100;
    var employeeNamesValues =
    [
        "Andrew", "Nancy", "Shelley", "Regina", "Yoshi", "Antoni", "Mayumi", "Ian", "Peter", "Lars", "Petra", "Martin", "Sven", "Elio", "Beate", "Cheryl", "Michael", "Guylene"
    ];

 var mondayinValues =     [
         "7.00 AM", "7.00 AM", "7.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM", "8.00 AM"
    ];
 var mondayoutValues =     [
        "4.00 AM","4.00 AM","4.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM","5.00 PM"
    ];
 var mondaytotalValues =   [
         "9.00 HRs", "9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs",
    ];

  var tuesdayinValues =     [
         "7.00 AM",  "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "7.00 AM", "8.00 AM"
    ];
 var tuesdayoutValues =    [
        "4.00 AM","4.00 AM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","4.00 PM","5.00 PM"
    ];
 var tuesdaytotalValues =    [
         "9.00 HRs", "9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs","9.00 HRs",
    ];


    var lastNames =
    [
        "Fuller", "Davolio", "Burke", "Murphy", "Nagase", "Saavedra", "Ohno", "Devling", "Wilson", "Peterson", "Winkler", "Bein", "Petersen", "Rossi", "Vileid", "Saylor", "Bjorn", "Nodier"
    ];


    for (var i = 0; i < rowscount; i++) {
        var row = {};
        var namesindex = Math.floor(Math.random() * employeeNamesValues.length);
        
           var employeename = employeeNamesValues[namesindex];

        var mondayin = mondayinValues[namesindex];
        var mondayout = mondayoutValues[namesindex];
        var mondaytotal = mondaytotalValues[namesindex];

           var tuesdayin = tuesdayinValues[namesindex];
        var tuesdayout = tuesdayoutValues[namesindex];
        var tuesdaytotal = tuesdaytotalValues[namesindex];

     

        // row["id"] = i;
        // row["available"] = productindex % 2 == 0;
        // if (hasNullValues == true) {
        //   if (productindex % 2 != 0) {
        //     var random = Math.floor(Math.random() * rowscount);
        //     row["available"] = i % random == 0 ? null : false;
        //   }
        // }
        // row["firstname"] = firstNames[Math.floor(Math.random() * firstNames.length)];
        // row["lastname"] = lastNames[Math.floor(Math.random() * lastNames.length)];
        
        row["employeename"] = employeeNamesValues[namesindex];

        row["mondayin"] = mondayinValues[namesindex];
        row["mondayout"] = mondayoutValues[namesindex];
        row["mondaytotal"] = mondaytotalValues[namesindex];

        row["tuesdayin"] = tuesdayinValues[namesindex];
        row["tuesdayout"] = tuesdayoutValues[namesindex];
        row["tuesdaytotal"] = tuesdaytotalValues[namesindex];


        // row["price"] = price;
        // row["quantity"] = quantity;
        // row["total"] = price * quantity;

        // var date = new Date();
        // date.setFullYear(2015, Math.floor(Math.random() * 12), Math.floor(Math.random() * 27));
        // date.setHours(0, 0, 0, 0);
        // row["date"] = date;
       
        data[i] = row;
    }

    return data;
}