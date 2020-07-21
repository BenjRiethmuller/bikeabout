const places = require('places.js');

const initPlaces = () => {

  const searchBar = document.querySelector('.searchbar-bar');

  if (searchBar) {

    var placesAutocomplete = places({
      appId: 'plSCTRJPJX76',
      apiKey: '493190a840549fb94a1390d1a7e58040',
      container: document.querySelector('.searchbar-bar'),
      language: 'en',
      type: 'city'
    });
  }
};

export { initPlaces };
