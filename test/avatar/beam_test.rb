require "test_helper"

class BoringAvatar::BeamTest < Minitest::Test
  def test_it_renders_svg
    assert_equal result, BoringAvatar::Beam.new.generate
  end

  def test_it_renders_svg_with_options
    assert_match /svg viewBox/i, BoringAvatar::Beam.new(name: "Octavio Yundt", colors: "random").generate
  end

  private

  def result
    "<svg viewBox='0 0 36 36' fill='none' xmlns='http://www.w3.org/2000/svg' width='40' height='40'><mask id='mask__beam' maskUnits='userSpaceOnUse' x='0' y='0' width='36' height='36'><rect width='36' height='36' rx='20' fill='white' /></mask><g mask='url(#mask__beam)' fill='transparent'><rect width='36' height='36' rx='20' fill='#c20d90' /><rect x='0' y='0' width='36' height='36' transform='translate(5 3) rotate(191 18 18) scale(1.2)' fill='#146a7c' rx='6' /><g transform='translate(7 0) rotate(-1 18 18)'><path d='M15 21 c2 1 4 1 6 0' stroke='white' fill='none' stroke-linecap='round' /><rect x='13' y='14' width='1.5' height='2' rx='1' stroke='none' fill='white' /><rect x='21' y='14' width='1.5' height='2' rx='1' stroke='none' fill='white' /></g></g></svg>"
  end
end
