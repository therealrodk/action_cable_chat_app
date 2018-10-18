App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert("You have a new mention from #{data.origin}") if data.mention
    # This still seems to work, IDK why.
    # unless data.message.blank?
    if (data.message && !data.message.blank?)
      $('#messages-table').append data.message
      scroll_bottom()
    # Called when there's incoming data on the websocket for this channel

$(document).on 'turbolinks:load', ->
  submit_message()
  scroll_bottom()

submit_message = () ->
  $('#message_content').on 'keydown', (event) ->
    if event.keyCode is 13 && !event.shiftKey
      $('input').click()
      event.target.value = ""
      event.preventDefault()

scroll_bottom = () ->
  $('#messages').scrollTop($('#messages')[0].scrollHeight)
