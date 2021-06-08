import consumer from "./consumer";
import scrollBottomMessages from "../plugins/scroll_bottom_messages";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        scrollBottomMessages()
      },
    });
  }
};

export default initChatroomCable;
