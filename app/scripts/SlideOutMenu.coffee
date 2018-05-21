document.addEventListener 'DOMContentLoaded', ->
  # Open menu
  $('.slide-out-menu-toggle').on 'click', ->
    if !$('.slide-out-menu').hasClass('slide-out-menu--open')
      # All toggle switches, not only this, if several, become active
      $('.slide-out-menu-toggle').addClass 'slide-out-menu-toggle--active'
      $('.slide-out-menu').addClass 'slide-out-menu--open'
      $('.slide-out-menu-overlay').addClass 'slide-out-menu-overlay--active'
    else
      $('.slide-out-menu-toggle').removeClass 'slide-out-menu-toggle--active'
      $('.slide-out-menu').removeClass 'slide-out-menu--open'
      $('.slide-out-menu-overlay').removeClass 'slide-out-menu-overlay--active'
    false
  # Close menu
  $('.slide-out-menu__toggle').on 'click', ->
    # All toggle switches, if several, no longer active
    $('.slide-out-menu-toggle').removeClass 'slide-out-menu-toggle--active'
    $('.slide-out-menu').removeClass 'slide-out-menu--open'
    $('.slide-out-menu-overlay').removeClass 'slide-out-menu-overlay--active'
    false
  $('.slide-out-menu-overlay').on 'click', ->
    # All toggle switches, if several, no longer active
    $('.slide-out-menu-toggle').removeClass 'slide-out-menu-toggle--active'
    $('.slide-out-menu').removeClass 'slide-out-menu--open'
    $('.slide-out-menu-overlay').removeClass 'slide-out-menu-overlay--active'
    false
  return
