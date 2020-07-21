const initToggle = () => {

let clickBookings = document.querySelector('.bookings-button');
let clickAll = document.querySelector('.all-button');
let myBikesAll = document.querySelector('.my-bikes-all')
let myBikesBookings = document.querySelector('.my-bikes-bookings')

if (clickBookings) {
clickBookings.addEventListener("click", (event) => {
    if(clickBookings.classList.contains("active")) {
      // clickBookings.classList.remove("active");
      clickAll.classList.remove("disabled");
      myBikesBookings.classList.remove("active");
      myBikesAll.classList.remove("disabled")
    }
    else
      clickBookings.classList.add("active");
      clickAll.classList.add("disabled");
      myBikesBookings.classList.add("active");
      myBikesAll.classList.add("disabled")
  });
};

if (clickAll) {
clickAll.addEventListener("click", (event) => {
    if(clickAll.classList.contains("disabled")) {
      clickAll.classList.remove("disabled");
      clickBookings.classList.remove("active");
      myBikesAll.classList.remove("disabled")
      myBikesBookings.classList.remove("active");
    }
    else
      // clickAll.classList.add("disabled");
      clickBookings.classList.remove("active");
      myBikesAll.classList.remove("disabled")
      myBikesBookings.classList.add("disabled");
  });
};

let clickPast = document.querySelector('.past-button');
let clickUpcoming = document.querySelector('.upcoming-button');
let myBookingsUpcoming = document.querySelector('.my-bookings-upcoming')
let myBookingsPast = document.querySelector('.my-bookings-past')

if (clickPast) {
clickPast.addEventListener("click", (event) => {
    if(clickPast.classList.contains("active")) {
      // clickPast.classList.remove("active");
      clickUpcoming.classList.remove("disabled");
      myBookingsPast.classList.remove("active");
      myBookingsUpcoming.classList.remove("disabled")
    }
    else
      clickPast.classList.add("active");
      clickUpcoming.classList.add("disabled");
      myBookingsPast.classList.add("active");
      myBookingsUpcoming.classList.add("disabled")
  });
};

if (clickUpcoming) {
clickUpcoming.addEventListener("click", (event) => {
    if(clickUpcoming.classList.contains("disabled")) {
      clickUpcoming.classList.remove("disabled");
      clickPast.classList.remove("active");
      myBookingsUpcoming.classList.remove("disabled");
      myBookingsPast.classList.remove("active")
    }
    else
      // clickUpcoming.classList.add("disabled");
      clickPast.classList.remove("active");
      myBookingsUpcoming.classList.remove("disabled");
      myBookingsPast.classList.remove("active")
  });
};
}

export { initToggle };
