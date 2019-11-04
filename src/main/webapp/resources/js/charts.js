
window.onload = function () {

    var chart = new CanvasJS.Chart("columnChartContainer", {
        animationEnabled: true,
        // title:{
        // 	text: "Crude Oil Reserves vs Production, 2016"
        // },	
        // axisY: {
        // 	title: "Billions of Barrels",
        // 	titleFontColor: "#4F81BC",
        // 	lineColor: "#4F81BC",
        // 	labelFontColor: "#4F81BC",
        // 	tickColor: "#4F81BC"
        // },
        // axisY2: {
        // 	title: "Millions of Barrels/day",
        // 	titleFontColor: "#C0504E",
        // 	lineColor: "#C0504E",
        // 	labelFontColor: "#C0504E",
        // 	tickColor: "#C0504E"
        // },	
        toolTip: {
            shared: true
        },
        legend: {
            cursor: "pointer",
            itemclick: toggleDataSeries
        },
        data: [{
            type: "column",
            name: "Proven Oil Reserves (bn)",
            legendText: "Proven Oil Reserves",
            showInLegend: true,
            dataPoints: [
                { label: "Monday", y: 266.21 },
                { label: "Tuesday", y: 202.25 },
                { label: "Wednesday", y: 157.20 },
                { label: "Thursday", y: 148.77 },
                { label: "Friday", y: 101.50 },
                { label: "Saturday", y: 97.8 }
            ]
        }

        ]
    });
    chart.render();

    function toggleDataSeries(e) {
        if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
            e.dataSeries.visible = false;
        }
        else {
            e.dataSeries.visible = true;
        }
        chart.render();
    }

    /*******************************barChartContainer******************************/

    var chart = new CanvasJS.Chart("barChartContainer", {
        animationEnabled: true,

        title: {
            text: "Fortune 500 Companies by Country"
        },
        axisX: {
            interval: 1
        },
        axisY2: {
            interlacedColor: "rgba(1,77,101,.2)",
            gridColor: "rgba(1,77,101,.1)",
            title: "Number of Companies"
        },
        data: [{
            type: "bar",
            name: "companies",
            axisYType: "secondary",
            color: "#014D65",
            dataPoints: [                
                { y: 33, label: "Manglesh Yadav" },
                { y: 38, label: "Batuk Zuber" },
                { y: 35, label: "Sanches Caesar" },
                { y: 34, label: "Freund Caroline" },
                { y: 29, label: "Router Luke" },
                { y: 25, label: "Carrao Andrew" },
                { y: 32, label: "Bijal Desai" },
                { y: 26, label: "Keraliya Naimish" },
            ]
        }]
    });
    chart.render();

}