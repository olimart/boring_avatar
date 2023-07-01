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
    "<svg viewBox='0 0 36 36' fill='none' xmlns='http://www.w3.org/2000/svg' width='40' height='40'><mask id='mask__beam' maskUnits='userSpaceOnUse' x='0' y='0' width='36' height='36'><rect width='36' height='36' rx='20' fill='white' /></mask><g mask='url(#mask__beam)' fill='transparent'><rect width='36' height='36' rx='20' fill='#f0ab3d' /><rect x='0' y='0' width='36' height='36' transform='translate(-5 9) rotate(49 18 18) scale(1.1)' fill='#c20d90' rx='36' /><g transform='translate(-1 4.5) rotate(9 18 18)'><path d='M13, 20 a1,0.75 0 0,0 10,0' fill='white' /><rect x='10' y='14' width='1.5' height='2' rx='1' stroke='none' fill='white' /><rect x='24' y='14' width='1.5' height='2' rx='1' stroke='none' fill='white' /></g></g></svg>"
  end
end
