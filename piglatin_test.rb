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

end
