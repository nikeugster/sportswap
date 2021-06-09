import consumer from './consumer';

consumer.subscriptions.create(
  'StatusUpdateChannel',
  {
    received(data) {
      console.log(data)
      console.log(data.booking_status)
    },
  },
);
