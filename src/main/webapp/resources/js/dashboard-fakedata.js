
// dashboard fakedata Your Workload
var agings = [
    { entityName: "Aging Referrals", value: 10, labelType: "btn-warning" },
    { entityName: "Aging Events", value: 0, labelType: "btn-primary" },
    { entityName: "Aging Alerts", value: 0, labelType: "btn-primary" },
    { entityName: "Aging Cases", value: 2, labelType: "btn-primary" }
];

var text = "";
for (var i = 0; i < agings.length; i++) {
    console.log(agings[i]);
    text += '<li  class="list-group-item d-flex justify-content-between align-items-center rounded-0 border-left-0 border-right-0">' + agings[i].entityName + '<span class="badge ' + agings[i].labelType + '">' + agings[i].value + '</span>' + '</li>';
}
document.getElementById("aging").innerHTML = text;