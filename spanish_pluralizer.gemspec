#encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'spanish_pluralizer'
  s.version     = '1.1.2'
  s.date        = '2013-01-10'
  s.summary     = "A gem for converting spanish singular nouns into plural"
  s.description = "Spanish Pluralizer is a gem for converting singular spanish nouns into plural. It works by adding the following methods to String: [:pluralize_spanish, :spanish_pluralizer_acute, :spanish_pluralizer_unacute, :spanish_pluralizer_is_acute?]. It can handle diphthong, hiatus and adding or removing acutes, but fails with some irregular monosyllables and rule exceptions like \"régimen\" => \"regímenes\" and \"espécimen\" => \"especímenes\"."
  s.authors     = ["Pablo Bianciotto"]
  s.email       = 'bianciottopablo@gmail.com'
  s.files       = ["lib/spanish_pluralizer.rb", "test/test_spanish_pluralizer.rb", "Rakefile", "LICENSE", "README.md"]
  s.homepage    = 'https://github.com/akhanubis/spanish_pluralizer'
end