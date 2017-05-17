ready = ->

  $(window).scroll ->
    element = $('#page-top-btn')
    element2 = $('#blog-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
      element2.fadeIn() if !visible
    else if height > 200
      element2.fadeIn() if !visible
    else
      element.fadeOut()
      element2.fadeOut()

  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')
    
  $(document).on 'click', '#move-blog-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)