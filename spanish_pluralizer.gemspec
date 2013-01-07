#encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'spanish_pluralizer'
  s.version     = '1.0.0'
  s.date        = '2013-01-07'
  s.summary     = "A gem for converting spanish singular nouns into plural"
  s.description = "An alpha version of a gem for converting spanish singular nouns into plural. It works by adding the following methods to String: [:acute, :unacute, :pluralize_spanish, :is_acute?]. Fails with monosyllable and exceptions like \"régimen => regímenes\""
  s.authors     = ["Pablo Bianciotto"]
  s.email       = 'bianciottopablo@gmail.com'
  s.files       = ["lib/spanish_pluralizer.rb", "README.md"]
  s.homepage    = 'https://github.com/akhanubis/spanish_pluralizer'
end