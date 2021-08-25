import Swiper from 'swiper';

const initSwiper = () => {
  const swiper = new Swiper('.swiper', {
    // Optional parameters
    spaceBetween: 60,
    centeredSlides: true,
    grabCursor: true,
  });

  swiper.on('sliderFirstMove', function () {
    console.log(swiper.touches.diff);
  });
}

export { initSwiper };
