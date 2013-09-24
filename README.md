Spanish Pluralizer
=========
[![Gem Version][GV img]][Gem Version]
[Gem Version]: https://rubygems.org/gems/spanish_pluralizer
[GV img]: https://badge.fury.io/rb/spanish_pluralizer.png


Spanish Pluralizer is a gem for converting singular spanish nouns into plural.
It works by adding the following methods to String: [:pluralize_spanish, :spanish_pluralizer_acute, :spanish_pluralizer_unacute, :spanish_pluralizer_is_acute?].
It can handle diphthong, hiatus and adding or removing acutes, but fails with some irregular monosyllables and rule exceptions like "régimen" => "regímenes" and "espécimen => especímenes".

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

Copyright (c) 2013 Pablo Bianciotto.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
