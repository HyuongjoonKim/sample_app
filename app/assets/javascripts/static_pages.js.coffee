# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  LIMIT = 140
  count = $('span#count')
  count.text(LIMIT)

  countChars = (textarea)->
    remaining = LIMIT - textarea.val().length
    count.text(remaining)

$('#micropost_content').keyup ->
  countChars($(this))
