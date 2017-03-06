 gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'piglatin'
require 'minitest/pride'

class PigLatinTest < Minitest::Test
  def test_1
    assert_equal 'arrowway', PigLatin.translate('arrow')
  end

  def test_2
    assert_equal 'igpay', PigLatin.translate('pig')
  end

  def test_3
    assert_equal 'igpay arrowway', PigLatin.translate('pig arrow')
  end

  def test_4
    assert_equal 'appleway ananabay orangeway', PigLatin.translate('apple banana orange')
  end

  def test_5
    assert_equal 'oughthray', PigLatin.translate('through')
  end

  def test_6
    assert_equal 'oUGhthray', PigLatin.translate('throUGh')
  end

  def test_7
    assert_equal 'oUgHThRay', PigLatin.translate('ThRoUgH')
  end

  def test_8
    assert_equal 'OUGHTHRay appleway IGPay', PigLatin.translate('THROUGH apple PIG')
  end

  def test_9
    assert_equal 'iHay, oWhay areway OUYay?', PigLatin.translate('Hi, hoW are YOU?')
  end

  def test_10
    assert_equal 'oWhay', PigLatin.translate('hoW')
  end

  def test_11
    assert_equal 'ellohay   owhay areway ouyay', PigLatin.translate('hello   how are you')
  end
end
