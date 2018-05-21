document.addEventListener 'DOMContentLoaded', ->
  wow = new WOW(
    boxClass: 'wow'
    animateClass: 'animated'
    offset: 0
    mobile: true
    live: true
    callback: (box) ->
      # the callback is fired every time an animation is started
      # the argument that is passed in is the DOM node being animated
      return
    scrollContainer: null
    resetAnimation: true)
  wow.init()
  return
