var mgtReports = [
    {

        breadCrumb: "nod",
        isDeleted: false,
        reportId: 61,
        reportImage: "ennviewIcon.png",
        reportImageClass: "enview",
        rptDefinitionFile: null,
        rptFileName: "ActiveEventsAndAlertsAndCasesbyCorrespondingTypeGroupedByUSer.jrxml",
        rptName: "Active Events, Alerts, And Cases By Corresponding Type Grouped By User",
        rptType: "Standard Reports",
        status: true
    },
    {
        breadCrumb: "nod",
        isDeleted: false,
        reportId: 45,
        reportImage: "ennviewIcon.png",
        reportImageClass: "enview",
        rptDefinitionFile: null,
        rptFileName: "BusinessCustomerRiskRatingDetail.jrxml",
        rptName: "BusinessCustomerRiskRatingDetail",
        rptType: "User Created Reports",
        status: true
    },
    {
        breadCrumb: "nod",
        isDeleted: false,
        reportId: 61,
        reportImage: "ennviewIcon.png",
        reportImageClass: "enview",
        rptDefinitionFile: null,
        rptFileName: "ActiveEventsAndAlertsAndCasesbyCorrespondingTypeGroupedByUSer.jrxml",
        rptName: "Active Events, Alerts, And Cases By Corresponding Type Grouped By User",
        rptType: "Standard Reports",
        status: true
    },
    {
        breadCrumb: "nod",
        isDeleted: false,
        reportId: 45,
        reportImage: "ennviewIcon.png",
        reportImageClass: "enview",
        rptDefinitionFile: null,
        rptFileName: "BusinessCustomerRiskRatingDetail.jrxml",
        rptName: "BusinessCustomerRiskRatingDetail",
        rptType: "User Created Reports",
        status: true
    }

]

var text = "";
var msg = "";
for (var i = 0; i < mgtReports.length; i++) {
    console.log(mgtReports[i]);
    msg = "";
    msg = mgtReports[i].rptName;
 
    text += '<li class="list-group-item eyeicon rounded-0 border-0 py-4"> <i class="fa fa-caret-left ml-4 pl-3" aria-hidden="true"></i> <a href="javascript:void(0)" class="ml-1" onclick="loadModel(id);" id="'+mgtReports[i].rptName+'"> ' + mgtReports[i].rptName + '</a></li>';
}
document.getElementById("mgt-report").innerHTML = text;