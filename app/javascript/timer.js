// Set the date we're counting down to
// grab the time from html and change it
// $(function() {

//   const notifTimer = document.getElementById("notif-timer");

//   if (notifTimer) {

//     var countDownDate = new Date("March 10, 2020 16:57:25").getTime();

//     // Update the count down every 1 second
//     var x = setInterval(function() {

//       // Get today's date and time
//       var now = new Date().getTime();

//       // Find the distance between now and the count down date
//       var distance = countDownDate - now;

//       // Time calculations for days, hours, minutes and seconds
//       var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
//       var seconds = Math.floor((distance % (1000 * 60)) / 1000);

//       // Output the result in an element with id="demo"
//       notifTimer.innerHTML = minutes + "m " + seconds + "s ";

//       // If the count down is over, write some text
//       if (distance < 0) {
//         clearInterval(x);
//         document.getElementById("notif-timer").innerHTML = "EXPIRED";
//       }
//     }, 1000);
//   }

// })();

// function getTimeRemaining(endtime) {
//   var t = Date.parse(endtime) - Date.parse(new Date());
//   var seconds = Math.floor((t / 1000) % 60);
//   var minutes = Math.floor((t / 1000 / 60) % 60);
//   return {
//     'total': t,
//     'minutes': minutes,
//     'seconds': seconds
//   };
// }

// function initializeClock(id, endtime) {
//   var clock = document.getElementById(id);
//   var minutesSpan = clock.querySelector('.minutes');
//   var secondsSpan = clock.querySelector('.seconds');

//   function updateClock() {
//     var t = getTimeRemaining(endtime);

//     minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
//     secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

//     if (t.total <= 0) {
//       clearInterval(timeinterval);
//     }
//   }

//   updateClock();
//   var timeinterval = setInterval(updateClock, 1000);
// }

// https://stackoverflow.com/questions/37403799/how-do-you-integrate-a-javascript-timer-to-countdown-to-count-from-a-ruby-variab
