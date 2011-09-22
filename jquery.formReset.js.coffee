# jQuery Form Reset
# =================
#
# A shortcut to reset form.
#
# Usage:
#
#   $('form').reset()

jQuery.fn.reset = ->
  @each -> @reset?()
