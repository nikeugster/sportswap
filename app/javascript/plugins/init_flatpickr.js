function datepicker() {
  const startDateInput = document.getElementById('booking_starts_at');
  const endDateInput = document.getElementById('booking_ends_at');

  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#offer-booking-dates').dataset.unavailable)
  endDateInput.disabled = true

  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  });

  startDateInput.addEventListener("change", (e) => {
    if (startDateInput != "") {
      endDateInput.disabled = false
    }
    flatpickr(endDateInput, {
      minDate: e.target.value,
      disable: unavailableDates,
      enableTime: true,
      dateFormat: "Y-m-d H:i"
      });
    })
  };
};

export default datepicker;
