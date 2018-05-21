document.addEventListener 'DOMContentLoaded', ->
  $(window).on 'scroll', ->
    wScroll = $(this).scrollTop()
    if wScroll > 20
      $('.page-header').addClass 'page-header--active'
    else
      $('.page-header').removeClass 'page-header--active'
    return
  return
