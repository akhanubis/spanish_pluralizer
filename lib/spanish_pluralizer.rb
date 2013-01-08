# encoding: utf-8

class AlreadyDefinedMethod < StandardError
end

class String

  clashing_methods = self.instance_methods(true) & [:pluralize_spanish, :spanish_pluralizer_acute, :spanish_pluralizer_unacute, :spanish_pluralizer_is_acute?]
  raise AlreadyDefinedMethod.new("The following instance methods for String have already been defined: #{clashing_methods * ', '}. Are you calling load more than once?") unless clashing_methods.empty?

  SPANISH_PLURALIZER_ACUTES = {
    'a' => 'á',
    'e' => 'é',
    'i' => 'í',
    'o' => 'ó',
    'u' => 'ú'
  }

  def spanish_pluralizer_acute
    SPANISH_PLURALIZER_ACUTES.fetch(self, self)
  end

  def spanish_pluralizer_unacute
    SPANISH_PLURALIZER_ACUTES.invert.fetch(self, self)
  end

  def spanish_pluralizer_is_acute?
    SPANISH_PLURALIZER_ACUTES.values.include? self
  end

  def pluralize_spanish
    #orden por probabilidad de ocurrencia para optimizar
    case self
    #caja => cajas
    #puente => puentes
    #papi => papis
    #mono => monos
    #río => ríos
    #palabru => palabrus
    #sofá => sofás
    #palabré => palabrés
    #palabró => palabrós
    when /.*[aeiouáéó]$/ then self + 's'
    when /(?<pre>.*)(?<last_vowel>.)(?<ending>[ns])$/
      if $~[:last_vowel].spanish_pluralizer_is_acute?
        new_str = self
        #aguda con tilde => grave sin tilde, a menos que el tilde se mantenga por existir hiato
        new_str[-2] = new_str[-2].spanish_pluralizer_unacute unless new_str[-3..-1].match(/(a|e|o)(í|ú)/)
        new_str + 'es'
      elsif $~[:ending] == 's'
        #análisis => análisis
        self
      else
        #imagen => imágenes
        #palebren => palébrenes
        #origen => orígenes
        #orden => órdenes
        #resumen => resúmenes
        ending = $~[:last_vowel] + 'nes'
        $~[:pre].sub(/(a|e|i|o|u)(?=[^aeiou]*$)/, &:spanish_pluralizer_acute) + ending
      end
    #arroz => arroces
    when /.*z$/ then self[0..-2] + 'ces'
    #delantal => delantales
    #mantel => manteles
    #mandril => mandriles
    #tambor => tambores
    #gandul => gandules
    #maní => maníes
    #menú => menúes
    #rey => reyes
    #fax => faxes
    #árbol => árboles
    #laúd => laúdes
    else
     self + 'es'
    end
  end
end