const scrollBottomMessages = () => {
  const messagesWindow = document.getElementById('messages');
  messagesWindow.scrollTop = messagesWindow.scrollHeight;
};

export default scrollBottomMessages;
