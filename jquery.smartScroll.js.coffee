# jQuery Smart Scroll
# ===================
#
# For example, you have a chat room, and server will push new messages to client.
# You want add the new message to messages list, and scroll down only if it was already scroll to bottom (like MSN messenger).
#
# First, you should give your container css style `overflow-y: scroll`, then:
#
#   newMessage = buildNewMessageDom()
#   $('#messages').smartScroll ->
#     $('#messages').append(newMessage)
#
# Done.

jQuery.fn.smartScroll = (fn) ->
  needScroll = @scrollTop() + @height() == @prop('scrollHeight')
  fn()
  @prop(scrollTop: @prop('scrollHeight')) if needScroll
