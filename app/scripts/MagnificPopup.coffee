document.addEventListener 'DOMContentLoaded', ->
  $('.image-popup-example').magnificPopup
    type: 'image'
    closeOnContentClick: true
    mainClass: 'mfp-img-mobile'
    image: verticalFit: true
  return
