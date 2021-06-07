import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    console.log(id)

    console.log(consumer.subscriptions)

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log(data);
        console.log("hello?")
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
};

export default initChatroomCable;
