
document.addEventListener("turbolinks:load", function() {
  function updatePrice() {
    console.log("start")
    let size = document.querySelector('#custom_size').value;
    let manufacturer = document.querySelector('#custom_manufacturer').value;
    let crayonWalls = document.querySelector('#custom_crayon_walls').checked;
    let entertainmentTablets = document.querySelector('#custom_entertainment_tablets').checked;
    let builtInGame = document.querySelector('#custom_built_in_game').value;

    let basePrice = { 'Small': 1000000, 'Medium': 2000000, 'Large': 4000000 };
    let manufacturerPremium = {
      'Boeing': 0,
      'Airbus': {
        'Small': 500000,
        'Medium': 750000,
        'Large': 1000000
      }
    };
    let extraFeaturesPrice = 0;

    extraFeaturesPrice += crayonWalls ? 250000 : 0;
    extraFeaturesPrice += entertainmentTablets ? 500000 : 0;
    extraFeaturesPrice += builtInGame === 'Ball Pit' ? 500000 : 0;
    extraFeaturesPrice += builtInGame === 'Arcade' ? 1000000 : 0;

    let totalPrice = basePrice[size] + (manufacturer === 'Airbus' ? manufacturerPremium['Airbus'][size] : 0) + extraFeaturesPrice;
    document.getElementById('total_price').innerText = `Estimated Price: $${(totalPrice / 1000000).toFixed(1)}M`;
    console.log("end")
  }

  document.querySelectorAll('#custom_size, #custom_manufacturer, #custom_crayon_walls, #custom_entertainment_tablets, #custom_built_in_game')
    .forEach(input => input.addEventListener('change', updatePrice));

  updatePrice();
});
