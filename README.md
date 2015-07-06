grapp-app-globals
=================

A web component for setting/getting global values.

Compatible with Polymer 1.0+

Global values are defined by `grapp-app-globals-set` child elements:

```html
<grapp-app-globals>
  <grapp-app-globals-set key="foo" value="bar"></grapp-app-globals-set>
</grapp-app-globals>
```

and accessed by `grapp-app-globals-get` elements:


```html
<grapp-app-globals>
	<grapp-app-globals-get key="foo" value="{{foo}}"></grapp-app-globals-get>
</grapp-app-globals>
<span>[[foo]]</span>
```

The value of a setter can be a binding expression. If the expression values changes,
all getters are updated.

Methods
-------

  * **getValue(key)**
	
    Retrieve a global value by its key
	  

grapp-app-globals-set
=====================

Defines a global value inside a `grapp-app-globals` element.

Properties
----------

  * **key**

    - *type:* string

    The key of the global value.


  * **value**

    - *type:* string

    The value of the global value.


grapp-app-globals-get
=====================

Retrieves a global value inside a `grapp-app-globals` element.

Properties
----------

  * **key**

    - *type:* string

    The key of the global value.


  * **value**

    - *type:* string

    The value binding of the global value.
