$(document).ready(function() {
  $("#slick").slick({
    accessibility: false,
    autoplay: true,
    prevArrow: '<button type="button" class="slick-prev"></button>',
    nextArrow: '<button type="button" class="slick-next"></button>'
  });

  $('div[class="jsx-2518707785 menuTrigger fauxTrigger"]').click(() => {
    $(".subMenuActive").css("display", "none");
  });
  $('button[class="jsx-2518707785 menuTrigger"]').click(() => {
    $(".subMenuActive").css("display", "block");
  });
  // $('a').attr('href','')
  // $("a").on("click", function(e) {
  //   e.preventDefault();
  //   location.hash = this.hash;
  // });
});
