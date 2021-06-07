function datepicker() {
  const startDateInput = document.getElementById('booking_starts_at');
  const endDateInput = document.getElementById('booking_ends_at');

  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#offer-booking-dates').dataset.unavailable)
  endDateInput.disabled = true

  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    time_24hr: true,
    enableTime: true,
    defaultHour: 8,
    dateFormat: "D. d.m.Y at H:i",
  });

  startDateInput.addEventListener("change", (e) => {
    if (startDateInput != "") {
      endDateInput.disabled = false
    }
    flatpickr(endDateInput, {
      minDate: e.target.value,
      disable: unavailableDates,
      time_24hr: true,
      enableTime: true,
      defaultHour: 8,
      dateFormat: "D. d.m.Y at H:i"
      });
    })
  };
};

export default datepicker;
