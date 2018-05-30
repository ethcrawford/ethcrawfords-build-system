# Magnific popup

document.addEventListener 'DOMContentLoaded', ->
  $('.image-popup-example').magnificPopup
    type: 'image'
    closeOnContentClick: true
    mainClass: 'mfp-img-mobile'
    image: verticalFit: true
  return


# Narrow navbar

document.addEventListener 'DOMContentLoaded', ->
  do ->
    wScroll = $(this).scrollTop()
    if wScroll > 20
      $('.page-header').addClass 'page-header--active'
    else
      $('.page-header').removeClass 'page-header--active'
    return

  $(window).on 'scroll', ->
    wScroll = $(this).scrollTop()
    if wScroll > 20
      $('.page-header').addClass 'page-header--active'
    else
      $('.page-header').removeClass 'page-header--active'
    return
  return


# Owl carousel

document.addEventListener 'DOMContentLoaded', ->
  $('.customers__authors').slick
    infinite: true
    slidesToShow: 3
    centerMode: true
    centerPadding: '0px'
    focusOnSelect: true
    slidesToScroll: 3
    asNavFor: '.customers__testimonials'

  $('.customers__testimonials').slick
    infinite: true
    slidesToShow: 1
    slidesToScroll: 1
    asNavFor: '.customers__authors'

  return


# Scroll Up

document.addEventListener 'DOMContentLoaded', ->
  $(window).on 'scroll', ->
    wScroll = $(this).scrollTop()
    if wScroll > 600
      $('.scroll-up').addClass 'scroll-up--active'
    else
      $('.scroll-up').removeClass 'scroll-up--active'
    return
  return


# Slide out menu

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


# Smooth scroll

document.addEventListener 'DOMContentLoaded', ->
  $('.smooth-scroll').not('[href="#"]').not('[href="#0"]').click (event) ->
    # On-page links
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      # Figure out element to scroll to
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      # Does a scroll target exist?
      if target.length
        # Only prevent default if animation is actually gonna happen
        event.preventDefault()
        $('html, body').animate { scrollTop: target.offset().top - 100 }, 600
    return
  return


# wow

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
