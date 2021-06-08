function datepicker() {
  const startDateInput = document.getElementById('booking_starts_at');
  const endDateInput = document.getElementById('booking_ends_at');
  let start_date = 0
  let end_date = 0

  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#offer-booking-dates').dataset.unavailable)
  endDateInput.disabled = true

    flatpickr(startDateInput, {
      dateFormat: "D. d.m.Y at H:i",
      minDate: "today",
      disable: unavailableDates,
      time_24hr: true,
      enableTime: true,
      defaultHour: 8,
      onChange:function(selectedDates, dateStr, instance) {
        start_date = selectedDates
        if (end_date !== 0) {
          const price_element = document.querySelector("#pricedata")
          const price = price_element.innerText
          const start_date_object = Date.parse(start_date)
          const end_date_object = Date.parse(end_date)
          if (price_element.dataset.pricetype === "PH") {
            const total_price = price * ((end_date_object - start_date_object) / 1000 / 60 / 60)
            const total_element = document.querySelector("#total-price");
            total_element.innerText = `Total price: $ ${total_price}`;
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "PH"
            price_dataset.dataset.totalprice = total_price;
          } else if (price_element.dataset.pricetype === "PD") {
            const total_price = price * ((end_date_object - start_date_object) / 1000 / 60 / 60 / 24)
            const total_element = document.querySelector("#total-price");
            total_element.innerText = `Total price: $ ${total_price}`;
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "PD"
            price_dataset.dataset.totalprice = total_price;
          } else if (price_element.dataset.pricetype === "FR") {
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "FR"
          } else if (price_element.dataset.pricetype === "OT") {
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "OT"
            price_dataset.dataset.totalprice = price;
          }
        }
      },
    });

    startDateInput.addEventListener("change", (e) => {
      if (startDateInput != "") {
        endDateInput.disabled = false
      }
      flatpickr(endDateInput, {
        dateFormat: "D. d.m.Y at H:i",
        minDate: e.target.value,
        disable: unavailableDates,
        time_24hr: true,
        enableTime: true,
        defaultHour: 8,
        onChange: function(selectedDates, dateStr, instance) {
          end_date = selectedDates
          const price_element = document.querySelector("#pricedata")
          const price = price_element.innerText
          const start_date_object = Date.parse(start_date)
          const end_date_object = Date.parse(end_date)
          if (price_element.dataset.pricetype === "PH") {
            const total_price = price * ((end_date_object - start_date_object) / 1000 / 60 / 60)
            const total_element = document.querySelector("#total-price");
            total_element.innerText = `Total price: $ ${total_price}`;
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "PH"
            price_dataset.dataset.totalprice = total_price;
          } else if (price_element.dataset.pricetype === "PD") {
            const total_price = price * ((end_date_object - start_date_object) / 1000 / 60 / 60 / 24)
            const total_element = document.querySelector("#total-price");
            total_element.innerText = `Total price: $ ${total_price}`;
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "PD"
            price_dataset.dataset.totalprice = total_price;
          } else if (price_element.dataset.pricetype === "FR") {
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "FR"
          } else if (price_element.dataset.pricetype === "OT") {
            const price_dataset = document.getElementById("book-button");
            price_dataset.dataset.pricetype = "OT"
            price_dataset.dataset.totalprice = price;
          }
        },
      });
    })
  };
};

export default datepicker;
