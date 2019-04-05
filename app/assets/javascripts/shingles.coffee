# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#shingle_shingle_uid').change ->
    $('#preloader').show()
    selected_id = $(this).val()
    $.ajax
      type: 'GET'
      dataType: 'script'
      url: '/shingles?uid='+selected_id
      success: (repsonse) ->
        $('#preloader').hide()
    return
  return