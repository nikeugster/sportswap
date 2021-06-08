const scrollBottomMessages = () => {
  const messagesWindow = document.getElementById('messages');
  messagesWindow.scrollTop = messagesWindow.scrollHeight;
};

setInterval(scrollBottomMessages, 1000);

export default scrollBottomMessages;
