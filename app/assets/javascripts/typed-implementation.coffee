ready = ->
  Typed.new '.element',
    strings: [
      'Escribir código es el concepto más cercano que tenemos a la magia'
      "En esta página podrás encontrar un poco de todo lo que he hecho a lo largo de mi vida como programador."
    ]
    typeSpeed: 30
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready