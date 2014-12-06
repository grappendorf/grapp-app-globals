grapp-app-globals
=================

A web component for setting/getting global values.

Global values are defined by `grapp-app-global-value` child elements:

```html
<grapp-app-globals>
  <grapp-app-global-value name="foo" value="bar"></grapp-app-globals-value>
</grapp-app-globals>
```

and accessed by another `grapp-app-globals` element:

```html
<grapp-app-globals id="globals">
</grapp-app-globals>

{{$.globals.foo}}
```


grapp-app-global-value
======================

Defines a global value inside a `grapp-app-globals` element.

Attributes
----------

  * **name**

    - *type:* string

    The name of the global value.

  * **value**

    - *type:* string

    The value of the global value.
