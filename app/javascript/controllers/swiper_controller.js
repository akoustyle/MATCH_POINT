// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import Swiper from 'swiper';
import "swiper/swiper-bundle.min.css";
import { csrfToken } from "@rails/ujs";
import swal from 'sweetalert';

export default class extends Controller {
  static targets = [ "wish" ]

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    // console.log(this.wishTargets)
    const swiper = new Swiper('.swiper', {
      // Optional parameters
      spaceBetween: 60,
      centeredSlides: true,
      effect: "cards",
      grabCursor: true,
      loop: true,
    });
    let swipeCount = 0;
    // console.log(swiper.activeIndex)
    swiper.on('slideNextTransitionEnd',  (e) => {
      // console.log("next -> disliked");
      // console.log(this.wishTargets.length)
      // console.log(swiper.activeIndex)
    const wishesCount = swiper.slides[e.realIndex].dataset.wishesCount;
    const homeUrl = swiper.slides[e.realIndex].dataset.homeUrl;
    swiper.removeSlide(swiper.activeIndex - 2)
    swipeCount += 1
    if (wishesCount == swipeCount) {
      window.location.href = homeUrl
    }

    })
    swiper.on('slidePrevTransitionEnd', (e) => {
      // console.log("prev -> liked");
      // console.log(swiper.activeIndex)
      // console.log(this.wishTargets.length)
      // this.wishTarget.classList.add("d-none")
      // const wishId =
      const wishId = swiper.slides[e.previousIndex].dataset.wishId;
      const wishesCount = swiper.slides[e.realIndex].dataset.wishesCount;
      const homeUrl = swiper.slides[e.realIndex].dataset.homeUrl;

      swiper.removeSlide(swiper.activeIndex)
      swipeCount += 1
      if (wishesCount == swipeCount) {
        window.location.href = homeUrl
      }


      if (swiper.activeIndex === 1) {
        swiper.slideTo(swiper.activeIndex -1, 0, false)
      }

    // 1. Recuperer l'id de la carte likee et je le stocke dans wishId
    // const wishId = parseInt(this.wishTarget.dataset.swiperId, 10) - 1

    fetch(`/wishes/${wishId}/likes?liked=true`, {
        method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
        body: {}
      })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        if (data.match) {
          const html = document.createElement("div");
          html.innerHTML = data.swal_content;
          swal({
            title: "You have a match",
            content: html,
            className: "match-swal",
            icon: "success",
            button: {
              visible: false
            }
          })
        }
      });
    })

  }
}


// const initSwiper = () => {
//   const swiper = new Swiper('.swiper', {
//     // Optional parameters
//     spaceBetween: 60,
//     centeredSlides: true,
//     effect: "cards",
//     grabCursor: true,
//   });

  // swiper.on('sliderFirstMove', function () {
  //   console.log(swiper.touches.diff);
  // });

  // fetch(this.formTarget.action, {
  //   method: 'POST',
  //   headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
  //   body: new FormData(this.formTarget)
  // })
  //   .then(response => response.json())
  //   .then((data) => {
  //     if (data.inserted_item) {
  //       this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item);
  //     }
  //     this.formTarget.outerHTML = data.form;
  // });
// }

// export { initSwiper };

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
