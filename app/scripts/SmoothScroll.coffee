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
