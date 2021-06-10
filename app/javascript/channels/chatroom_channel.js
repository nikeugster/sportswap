import consumer from "./consumer";
import scrollBottomMessages from "../plugins/scroll_bottom_messages";

const insertIntoDOM = (messageHTML, currentUserId, messages) => {
  const div = document.createElement('div');
  div.innerHTML = messageHTML;

  const message = div.firstChild

  if (message.dataset.senderId == currentUserId) {
    message.firstElementChild.classList.remove('receiver-message')
    message.firstElementChild.classList.add('sender-message');
  } else {
    message.firstElementChild.classList.remove('sender-message')
    message.firstElementChild.classList.add('receiver-message');
  }

  messages.insertAdjacentElement('beforeend', message)
}


const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');

  if (messagesContainer) {
    const chatroomId = messagesContainer.dataset.chatroomId;
    const currentUserId = messagesContainer.dataset.currentUserId

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: chatroomId }, {
      received(messageHTML) {
        insertIntoDOM(messageHTML, currentUserId, messagesContainer)
        scrollBottomMessages()
      },
    });
  }
};

export default initChatroomCable;
