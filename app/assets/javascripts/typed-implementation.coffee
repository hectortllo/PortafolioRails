ready = ->
  Typed.new '.element',
    strings: [
      'Writing code is the closest concept we have to magic'
      "On this page you can find a bit of everything I have done throughout my life as a programmer"
    ]
    typeSpeed: 30
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready