// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_script
//= require jquery_ujs
//= require activestorage
//= require script
//= require slick.min
//= require slider
//= require toastr

//
$(document).ready(function() {

  $('.modal_open').click(function(event) {
    event.preventDefault();
    $('.modal #loan_id').val($(this).data('loan'));
    $('.modal #bid_id').val($(this).data('bid'));
    $('.modal .loan_term').html($(this).data('loan-term') + " months");
    $('.modal .loan_apr').html($(this).data('loan-apr') + "%");
    $('.modal .monthly_payment').html("UZS " + $(this).data('monthly-payment'));
    $('.modal .total_payment').html("UZS " + $(this).data('total-payment'));
    $('.modal').modal();
  });
  $('.modal_open1').click(function(event) {
    event.preventDefault();
    $('.modal1').modal();
  });
  $('.modal_open2').click(function(event) {
    event.preventDefault();
    $('.modal2').modal();
  });
  $('.modal_open3').click(function(event) {
    event.preventDefault();
    $('.modal3').modal();
  });

  $(".show_loans").click(function(event){
    event.preventDefault();
    $('.loan-' + $(this).data('loan-id')).slideToggle('slow');
  });

if(document.getElementsByClassName("myChart")){
var i;
for (i = 0; i < document.getElementsByClassName("myChart").length; i++) {
  var ctx = document.getElementsByClassName("myChart")[i].getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [1,2,3,4,5,6,7,8,9,10,11,12],
      datasets: [{
        label: '',
        fill: false,
        backgroundColor: '#aaa',
        borderColor: '#000',
        borderDash: [10, 10],
        data: $($('.myChart')[i]).data('dataset')
      }],
    },
    options: {
      legend: {
        display: false
      }
    }
  }
);
}
}
})
