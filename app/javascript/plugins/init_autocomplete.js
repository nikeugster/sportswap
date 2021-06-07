import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('.last-input');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
