# encoding: utf-8
require 'spanish_pluralizer'
require 'test/unit'

class TestSpanishPluralizer < Test::Unit::TestCase

  def test_plurals_should_be_right
    {
      caja: 'cajas',
      puente: 'puentes',
      papi: 'papis',
      mono: 'monos',
      tribu: 'tribus',
      delantal: 'delantales',
      mantel: 'manteles',
      mandril: 'mandriles',
      tambor: 'tambores',
      gandul: 'gandules',
      sofá: 'sofás',
      carné: 'carnés',
      maní: 'maníes',
      plató: 'platós',
      menú: 'menúes',
      compás: 'compases',
      sartén: 'sartenes',
      clarín: 'clarines',
      camión: 'camiones',
      atún: 'atunes',
      rey: 'reyes',
      fax: 'faxes',
      árbol: 'árboles',
      laúd: 'laúdes',
      río: 'ríos',
      imagen: 'imágenes',
      origen: 'orígenes',
      orden: 'órdenes',
      resumen: 'resúmenes',
      país: 'países',
      espíritu: 'espíritus',
      sal: 'sales',
      faz: 'faces',
      la: 'las',
      mar: 'mares',
      té: 'tés',
      vía: 'vías'
    }.each do |singular, plural|
      assert_equal(plural, singular.to_s.pluralize_spanish)
    end
  end

  #some examples of words currently not supported
  def test_plurals_should_be_wrong
    {
      él: 'ellos', 
      el: 'los',
      régimen: 'regímenes',
      espécimen: 'especímenes',
      mí: 'mis'
    }.each do |singular, plural|
      pluralized = singular.to_s.pluralize_spanish
      p "Pluralize_spanish gives #{pluralized} but should be #{plural}"
      assert_not_equal(plural, pluralized)
    end
  end
end