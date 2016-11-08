(($) ->
  'use strict'
  # Start of use strict
  # jQuery for page scrolling feature - requires jQuery Easing plugin
  $('a.page-scroll').bind 'click', (event) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top - 50 }, 1250, 'easeInOutExpo'
    event.preventDefault()
    return
  # Highlight the top nav as scrolling occurs
  $('body').scrollspy
    target: '.navbar-fixed-top'
    offset: 100
  # Closes the Responsive Menu on Menu Item Click
  $('.navbar-collapse ul li a').click ->
    $('.navbar-toggle:visible').click()
    return
  # Offset for Main Navigation
  $('#mainNav').affix offset: top: 50
  return
) jQuery
