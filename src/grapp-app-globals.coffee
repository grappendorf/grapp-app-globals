values = {}

Polymer 'grapp-app-globals',

  attached: ->
    for globalValue in @querySelectorAll 'grapp-app-global-value'
      values[globalValue.getAttribute 'name'] = globalValue.getAttribute 'value'

    for key, value of values
      @[key] = value
