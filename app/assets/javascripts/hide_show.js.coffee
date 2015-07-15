$(document).ready ->
  $('#password').hidePassword()
  $('#copy_clipboard_success').hide()

  $('#show_hide').on 'click', ->
    $('#password').togglePassword()
    return

  client = new ZeroClipboard(document.getElementById('copy_to_clipboard'))
  client.on 'ready', (readyEvent) ->
    client.on 'aftercopy', (event) ->
      $('#copy_clipboard_success').show()
  return
  return