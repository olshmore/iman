window.onload = () => {



let mySwiper = new Swiper('.swiper-container', {
     slidesPerView: 'auto',
     centeredSlides: true,
     spaceBetween: 8,
     loop: true,
     simulateTouch : true,
     loopFillGroupWithBlank: false,
     grabCursor: true,
     //touchStartPreventDefault: false,
    navigation: {
       nextEl: '.swiper-button-next',
       prevEl: '.swiper-button-prev',
     },
   });

  }
