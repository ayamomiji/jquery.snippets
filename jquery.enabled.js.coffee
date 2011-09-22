# jQuery Enabled
# ==============
#
# Shortcuts for enable/disable input elements.
#
# Usage:
#
#   $(':submit').enabled(true)
#   $(':submit').enabled() # => true
#   $(':submit').enabled(false)
#   $(':submit').enabled() # => false

# Uncomment this line if you are not using jQuery 1.6+
# jQuery.fn.prop = jQuery.fn.attr if !jQuery.prop

jQuery.fn.enabled = (value) ->
  if value is undefined
    !@prop('disabled')
  else
    @prop('disabled', !value)
