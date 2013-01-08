# encoding: utf-8
require '../lib/spanish_pluralizer'
require 'test/unit'

class SpanishPluralizerTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_plurals
    assert_equal('cajas', 'caja'.pluralize_spanish)
    assert_equal('puentes', 'puente'.pluralize_spanish)
    assert_equal('papis', 'papi'.pluralize_spanish)
    assert_equal('monos', 'mono'.pluralize_spanish)
    assert_equal('hhus', 'hhu'.pluralize_spanish)
    assert_equal('delantales', 'delantal'.pluralize_spanish)
    assert_equal('manteles', 'mantel'.pluralize_spanish)
    assert_equal('mandriles', 'mandril'.pluralize_spanish)
    assert_equal('tambores', 'tambor'.pluralize_spanish)
    assert_equal('gandules', 'gandul'.pluralize_spanish)
    assert_equal('sofás', 'sofá'.pluralize_spanish)
    assert_equal('hhés', 'hhé'.pluralize_spanish)
    assert_equal('maníes', 'maní'.pluralize_spanish)
    assert_equal('hhós', 'hhó'.pluralize_spanish)
    assert_equal('menúes', 'menú'.pluralize_spanish)
    assert_equal('compases', 'compás'.pluralize_spanish)
    assert_equal('sartenes', 'sartén'.pluralize_spanish)
    assert_equal('clarines', 'clarín'.pluralize_spanish)
    assert_equal('camiones', 'camión'.pluralize_spanish)
    assert_equal('atunes', 'atún'.pluralize_spanish)
    assert_equal('reyes', 'rey'.pluralize_spanish)
    assert_equal('faxes', 'fax'.pluralize_spanish)
    assert_equal('árboles', 'árbol'.pluralize_spanish)
    assert_equal('laúdes', 'laúd'.pluralize_spanish)
    assert_equal('ríos', 'río'.pluralize_spanish)
    assert_equal('imágenes', 'imagen'.pluralize_spanish)
    assert_equal('orígenes', 'origen'.pluralize_spanish)
    assert_equal('órdenes', 'orden'.pluralize_spanish)
    assert_equal('resúmenes', 'resumen'.pluralize_spanish)
    assert_equal('países', 'país'.pluralize_spanish)
  end
end