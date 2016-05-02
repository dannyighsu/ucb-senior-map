# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.form').find('input, textarea').on 'keyup blur focus', (e) ->
  $this = $(this)
  label = $this.prev('label')
  if e.type == 'keyup'
    if $this.val() == ''
      label.removeClass 'active highlight'
    else
      label.addClass 'active highlight'
  else if e.type == 'blur'
    if $this.val() == ''
      label.removeClass 'active highlight'
    else
      label.removeClass 'highlight'
  else if e.type == 'focus'
    if $this.val() == ''
      label.removeClass 'highlight'
    else if $this.val() != ''
      label.addClass 'highlight'
  return
$('.tab a').on 'click', (e) ->
  e.preventDefault()
  $(this).parent().addClass 'active'
  $(this).parent().siblings().removeClass 'active'
  target = $(this).attr('href')
  $('.tab-content > div').not(target).hide()
  $(target).fadeIn 600
  return