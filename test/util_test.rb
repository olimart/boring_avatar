require "test_helper"

class UtilTest < Minitest::Test
  def test_that_it_sums_up_byte16_value_of_each_character
    assert_equal 645088871, Util.get_number("Clara Barton")
  end

  def test_that_it_gets_random_color_from_list
    expected = %w[#c20d90 #92a1c6 #146a7c #f0ab3d]
    4.times.each_with_index do |_, index|
      assert_equal expected[index],
        Util.get_random_color(BoringAvatar::Base::COLORS, 1129+index, 5)
    end
  end

  def test_that_it_returns_the_base_to_the_exponent_power
    assert_equal 9, Util.get_digit(1129, 0)
  end

  def test_that_it_returns_boolean
    refute Util.get_boolean(1129, 0)
    assert Util.get_boolean(1129, 1)
    refute Util.get_boolean(1129, 2)
    refute Util.get_boolean(1129, 3)
  end

  class ColourHelper < Minitest::Test
    def test_light_background_has_black_contrast
      %w[ffcc00 ccff00 00ccff ff6600 cc6666].each do |hex|
        assert_equal "black", Util.get_contrast(hex)
      end
    end

    def test_dark_background_has_white_contrast
      %w[ff0066 006666 0099cc 666600 cc00cc].each do |hex|
        assert_equal "white", Util.get_contrast(hex)
      end
    end
  end
end
