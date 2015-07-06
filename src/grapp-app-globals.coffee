instances = []
values = {}

Polymer

  is: 'grapp-app-globals'

  computed: {}

  detached: ->
    instances.splice instances.indexOf(this), 1

  attached: ->
    instances.push this
    for setter in Polymer.dom(@).querySelectorAll 'grapp-app-globals-set'
      values[setter.key] = setter.value
    @_updateAllInstances()

  updateValue: (key, value) ->
    values[key] = value
    @_updateAllInstances key

  getValue: (key) ->
    values[key]

  _updateAllInstances: (key) ->
    for instance in instances
      instance._update (key)

  _update: (key) ->
    selector = 'grapp-app-globals-get' + (if key then "[key=#{key}]" else '')
    for getter in Polymer.dom(@).querySelectorAll selector
      getter.value = values[getter.key]
