Polymer

  is: 'grapp-app-globals-set'

  properties:
    key: {type: String}
    value: {type: String, observer: '_valueChanged'}

  _valueChanged: ->
    parent = Polymer.dom(@).parentNode
    parent = parent.parentNode while parent && parent.tagName != 'GRAPP-APP-GLOBALS'
    unless parent
      throw new Error "grapp-app-globals-set with key '#{@key}' is not inside a grapp-app-globals element!"
    parent.updateValue @key, @value
