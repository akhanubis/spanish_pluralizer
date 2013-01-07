Spanish Pluralizer
=========

Spanish Pluralizer is a gem for converting singular spanish nouns into plural.
It works by adding the following methods to String: [:pluralize_spanish, :acute, :unacute, :is_acute?].
Fails with monosyllables and rule exceptions like "régimen" => "regímenes".

Usage
------------

```ruby
require 'spanish_pluralizer' #not needed if using Gemfile

'camión'.pluralize_spanish
=> 'camiones'

'caries'.pluralize_spanish
=> 'caries'

'imagen'.pluralize_spanish
=> 'imágenes'

'arroz'.pluralize_spanish
=> 'arroces'
```

Installation
------------

Spanish Pluralizer is distributed as a gem.

You can install it by running

```ruby
gem install spanish_pluralizer
```

or including the gem in your Gemfile:

```ruby
gem spanish_pluralizer
```

Credits
-------

Pablo Bianciotto.

License
-------

Paperclip it is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
