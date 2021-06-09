import consumer from './consumer';

const initStatusUpdateChannel = () => {
  consumer.subscriptions.create(
    'StatusUpdateChannel',
    {
      received(data) {
        console.log(data)
        console.log(data.booking_status)
        console.log(data.booking_id)

        const bookingStatus = document.getElementById(`booking-status-${data.booking_id}`)

        if (data.booking_status == "accepted") {
          bookingStatus.innerHTML = "<p class='dashboard-accepted-text'><i class='fas fa-check-circle'></i> accepted!</p>"
        } else if (data.booking_status == "declined") {
          bookingStatus.innerHTML = "<p class='dashboard-declined-text'><i class='fas fa-times-circle'></i> declined!</p>"
        }
      },
    },
  );
};

export default initStatusUpdateChannel;
