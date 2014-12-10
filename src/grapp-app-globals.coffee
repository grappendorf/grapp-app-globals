instances = []
values = {}

Polymer 'grapp-app-globals',

  attached: ->
    instances.push this

    for globalValue in @querySelectorAll 'grapp-app-global-value'
      values[globalValue.getAttribute 'name'] = globalValue.getAttribute 'value'

    for instance in instances
      instance.updateValues()

  updateValues: ->
    for key, value of values
      @[key] = value
