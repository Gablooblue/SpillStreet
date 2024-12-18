// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require jquery-ui/widgets/autocomplete
//= require autocomplete-rails
//= require activestorage
//= require turbolinks
//= require readmore.min
//= require_tree .

document.addEventListener('turbolinks:load', function(){

    // Readmore
    $('.content').readmore({
        speed: 125, 
        lessLink: '<a href="#" class="has-text-centered button">Read Less</a>',
        moreLink: '<a href="#" class="has-text-centered button">Read More</a>',
        collapsedHeight: 105,
        heightMargin: 30,
        blockCSS: 'display: block; width: 100%; margin-bottom:0.5em;'
     });


    // Get all "navbar-burger" elements
    const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

    // Check if there are any navbar burgers
    if ($navbarBurgers.length > 0) {

        // Add a click event on each of them
        $navbarBurgers.forEach( el => {
            el.addEventListener('click', () => {

                // Get the target from the "data-target" attribute
                const target = el.dataset.target;
                const $target = document.getElementById(target);

                // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
                el.classList.toggle('is-active');
                $target.classList.toggle('is-active');

            });
        });
    }

    $(".notification").delay(2000).fadeOut(500, function(){
        $(".notification").alert('close');
    });



});
