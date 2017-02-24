gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'piglatin'
require 'minitest/pride'

class PigLatinTest < Minitest::Test
  def test_1
    assert_equal 'arrowway', PigLatin.new('arrow').translate
  end

  def test_2
    assert_equal 'igpay', PigLatin.new('pig').translate
  end

  def test_3
    assert_equal 'igpay arrowway', PigLatin.new('pig arrow').translate
  end

  def test_4
    assert_equal 'appleway ananabay orangeway', PigLatin.new('apple banana orange').translate
  end

  def test_5
    assert_equal 'oughthray', PigLatin.new('through').translate
  end

  def test_6
    assert_equal 'oughthray', PigLatin.new('ThRoUgH').translate
  end

  def test_7
    assert_equal 'oughthray appleway igpay', PigLatin.new('THROUGH apple PIG').translate
  end

  def test_8
    assert_equal 'appleway ananabay oughthray', PigLatin.new('apple, banana, through').translate
  end
end
