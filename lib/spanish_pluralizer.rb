# encoding: utf-8

class AlreadyDefinedMethod < StandardError
end

class String

  raise AlreadyDefinedMethod.new unless (self.instance_methods(true) & [:acute, :unacute, :pluralize_spanish, :is_acute?]).empty?

  def acute
    case self
      when 'a'
        'á'
      when 'e'
        'é'
      when 'i'
        'í'
      when 'o'
        'ó'
      when 'u'
        'ú'
      else self
    end
  end

  def unacute
    case self
      when 'á'
        'a'
      when 'é'
        'e'
      when 'í'
        'i'
      when 'ó'
        'o'
      when 'ú'
        'u'
      else self
    end
  end

  def is_acute?
    ['á','é','í','ó','ú'].include? self
  end

  def pluralize_spanish
    #orden por probabilidad de ocurrencia para optimizar
    case self
      when /.*[aeiouáéó]$/
        #caja => cajas
        #puente => puentes
        #papi => papis
        #mono => monos
        #río => ríos
        #palabru => palabrus
        #sofá => sofás
        #palabré => palabrés
        #palabró => palabrós
        self + 's'
      when /(?<pre>.*)(?<last_vowel>.)(?<ending>[ns])$/
        if $~[:last_vowel].is_acute?
          new_str = self
          #aguda con tilde => grave sin tilde, a menos que el tilde se mantenga por existir hiato
          new_str[-2] = new_str[-2].unacute unless new_str[-3..-1].match(/(a|e|o)(í|ú)/)
          new_str + 'es'
        else
          if $~[:ending] == 's'
            #análisis => análisis
            self
          else
            #imagen => imágenes
            #palebren => palébrenes
            #origen => orígenes
            #orden => órdenes
            #resumen => resúmenes
            ending = $~[:last_vowel] + 'nes'
            $~[:pre].sub(/(a|e|i|o|u)(?=[^aeiou]*$)/, &:acute) + ending
          end
        end
      when /.*z$/
        #arroz => arroces
        self[0..-2] + 'ces'
      else
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
        self + 'es'
    end
  end
end