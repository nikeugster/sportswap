import places from 'places.js';

const initAutocomplete = () => {
  const reconfigurableOptions = {
    language: 'en'
  };

  const addressInput = document.querySelector('.last-input');
  if (addressInput) {
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initAutocomplete };
