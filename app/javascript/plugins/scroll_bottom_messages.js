let scrolled = false

const scrollBottomMessages = () => {
  if (!scrolled) {
    const messagesWindow = document.getElementById('messages');
    messagesWindow.scrollTop = messagesWindow.scrollHeight;
  }
};

$('#messages').on('scroll', function(){
  let scrolled=true;
});

export default scrollBottomMessages;
