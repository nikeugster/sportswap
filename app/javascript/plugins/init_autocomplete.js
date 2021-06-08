import places from 'places.js';

const initAutocomplete = () => {
  const reconfigurableOptions = {
    language: 'en',
    countries: ['de'],
  };

  const addressInput = document.querySelector('.last-input');
  if (addressInput) {
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initAutocomplete };
