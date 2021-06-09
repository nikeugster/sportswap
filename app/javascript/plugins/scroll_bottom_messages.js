const scrollBottomMessages = () => {
  const messagesWindow = document.getElementById('messages');
  if(messagesWindow) {
    messagesWindow.scrollTop = messagesWindow.scrollHeight;
  }
};

export default scrollBottomMessages;
