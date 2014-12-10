instances = []
values = {}

Polymer 'grapp-app-globals',

  computed: {}

  detached: ->
    instances.splice instances.indexOf(this), 1

  ready: ->
    instances.push this
    for globalValue in @querySelectorAll 'grapp-app-global-value'
      if globalValue.hasAttribute 'value'
        values[globalValue.getAttribute 'name'] = globalValue.getAttribute 'value'
      else
        values[globalValue.getAttribute 'name'] = globalValue.textContent

    for instance in instances
      instance.updateValues()

  updateValues: ->
    for key, value of values
      if /\{\{(.+)\}\}/.test value
        @computed[key] = value[2..-3]
      else
        @[key] = value
