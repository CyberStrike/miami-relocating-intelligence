# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready page:load', ->
  $('#search').on 'ajax:success', (e, data, status, xhr) ->
    if $('.search-results')[0]
      $('.search-results').fadeOut().html(data).fadeIn()
    else
      $('.search-container').addClass('has-search-results')
      $(this).after('<div class="search-results" style="display: none;"></div>')
      $('.search-results').html(data).fadeIn()
