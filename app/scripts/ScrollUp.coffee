document.addEventListener 'DOMContentLoaded', ->
  $(window).on 'scroll', ->
    wScroll = $(this).scrollTop()
    if wScroll > 600
      $('.scroll-up').addClass 'scroll-up--active'
    else
      $('.scroll-up').removeClass 'scroll-up--active'
    return
  return
