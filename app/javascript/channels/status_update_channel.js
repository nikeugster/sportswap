import consumer from './consumer';

const initStatusUpdateChannel = () => {
  consumer.subscriptions.create(
    'StatusUpdateChannel',
    {
      received(data) {
        const bookingStatus = document.getElementById(`booking-status-${data.booking_id}`)

        if (bookingStatus) {
          if (data.booking_status == "accepted") {
            bookingStatus.innerHTML = "<p class='dashboard-accepted-text'><i class='fas fa-check-circle'></i> accepted!</p>"
          } else if (data.booking_status == "declined") {
            bookingStatus.innerHTML = "<p class='dashboard-declined-text'><i class='fas fa-times-circle'></i> declined!</p>"
          }
        }
      },
    },
  );
};

export default initStatusUpdateChannel;
