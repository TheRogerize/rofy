// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")
require("@hotwired/turbo")

import "@hotwired/turbo-rails"
require("@rails/activestorage")
import  "../stylesheets/application.scss";
//import Rails from '@rails/ujs';

window.Rails = Rails
Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
$( document ).ready(function() {
    console.log( "ready!" );
});
$(document).on('turbo:load', () => {
    console.log("TURBO LOADED");
})
