$(document).ready(function() {
 var ctx = document.getElementById("areachartfillstart");
 if(ctx) {
   var areachartfillstart = new Chart(ctx, {
     type: 'line',
     data: {
       labels: ["August", "September", "October", "November", "December", "January"],
       datasets: [{
         label: "Profit",
         dispay: false,
         fill: 'start',
          backgroundColor: '#00c292',
         borderColor: '#00c292',
         data: [50, 2000, 2400, 3000, 3100, 5200]
             }]
     },
     options: {
       responsive: true,
       maintainAspectRatio: false,
       spanGaps: false,
       title:{
         display:false,
         // text:'Profit for 6 months'
       },
       elements: {
         line: {
           tension: 0.000001
         }
       },
       plugins: {
         filler: {
           propagate: false
         }
       },
       legend: {
          display: false
      },
       scales: {
         xAxes: [{
           ticks: {
             autoSkip: false,
             maxRotation: 0
           }
         }]
       }
     }
   });   
 }

})
