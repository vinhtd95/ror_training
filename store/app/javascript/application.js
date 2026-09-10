// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"

document.addEventListener("turbo:load", function() {
  if ($('.phone-slider').length > 0) {
    $('.phone-slider').owlCarousel({
      loop: true,                 
      autoplay: true,             
      autoplayTimeout: 3000,      
      autoplayHoverPause: true,   
     
      margin: 15,       
      nav: true,         
      dots: true,         
      responsive: {
        0: { items: 1 },    
        600: { items: 2 },  
        1000: { items: 4 } 
      }
    });
  }
});