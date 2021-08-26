import Swiper from 'swiper';

const initSwiper = () => {
  const swiper = new Swiper('.swiper', {
    // Optional parameters
    spaceBetween: 60,
    centeredSlides: true,
    effect: "cards",
    grabCursor: true,
  });

  swiper.on('sliderFirstMove', function () {
    console.log(swiper.touches.diff);
  });

  fetch(this.formTarget.action, {
    method: 'POST',
    headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
    body: new FormData(this.formTarget)
  })
    .then(response => response.json())
    .then((data) => {
      if (data.inserted_item) {
        this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item);
      }
      this.formTarget.outerHTML = data.form;
    });
}

export { initSwiper };

// initialiser les coordinates a 0
// event.deltaX > 0);
// event.deltaX < 0);

// wish-card.forEach((coordinate) => {
//   const minSwipeLength = 130;
//   if (coordinate.x > minSwipeLength) {
//     like();
//   } else if (coordinate.x < -minSwipeLength) {
//     nope();
//   } else {
//     cancel();
//   }
// });

// function detectswipe(el, func) {
//   swipe_det = new Object();
//   swipe_det.sX = 0; swipe_det.sY = 0; swipe_det.eX = 0; swipe_det.eY = 0;
//   var min_x = 30;  //min x swipe for horizontal swipe
//   var max_x = 30;  //max x difference for vertical swipe
//   var min_y = 50;  //min y swipe for vertical swipe
//   var max_y = 60;  //max y difference for horizontal swipe
//   var direc = "";
//   ele = document.getElementById(el);
//   ele.addEventListener('touchstart', function (e) {
//     var t = e.touches[0];
//     swipe_det.sX = t.screenX;
//   }, false);
//   //horizontal detection
//   if ((((swipe_det.eX - min_x > swipe_det.sX) || (swipe_det.eX + min_x < swipe_det.sX)) && ((swipe_det.eY < swipe_det.sY + max_y) && (swipe_det.sY > swipe_det.eY - max_y)))) {
//     if (swipe_det.eX > swipe_det.sX) direc = "right";
//     else direc = "left";
//   };
//   //vertical detection
//   if ((((swipe_det.eY - min_y > swipe_det.sY) || (swipe_det.eY + min_y < swipe_det.sY)) && ((swipe_det.eX < swipe_det.sX + max_x) && (swipe_det.sX > swipe_det.eX - max_x)))) {
//     if (swipe_det.eY > swipe_det.sY) direc = "down";
//     else direc = "up";
//   };
