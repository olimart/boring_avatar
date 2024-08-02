require "test_helper"

class BoringAvatar::BauhausTest < Minitest::Test
  def test_it_renders_svg
    assert_equal result, BoringAvatar::Bauhaus.new.generate
  end

  def test_random_colours
    assert_match /svg viewBox/i, BoringAvatar::Bauhaus.new(colors: "random").generate
  end

  private

  def result
    "<svg viewBox='0 0 80 80' fill='none' xmlns='http://www.w3.org/2000/svg' width='40' height='40'><mask id='mask__bauhaus' maskUnits='userSpaceOnUse' x='0' y='0' width='80' height='80'><rect width='80' height='80' rx='40' fill='#fff' /></mask><g mask='url(#mask__bauhaus)'><rect width='80' height='80' rx='40' fill='#146a7c' /><rect x='10' y='30' width='80' height='80' fill='#f0ab3d' transform='translate(-18 18) rotate(22 40 40)' /><circle cx='40' cy='40' fill='#c271b4' r='16' transform='translate(0 0)' /><line x1='0' y1='40' x2='80' y2='40' stroke-width='2' stroke='#c20d90' transform='translate(-4 -4) rotate(44 40 40)' /></g></svg>"
  end
end
