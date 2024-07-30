require "test_helper"

class BoringAvatar::SunsetTest < Minitest::Test
  def test_it_renders_svg
    assert_equal result, BoringAvatar::Sunset.new.generate
  end

  private

  def result
    "<svg viewBox='0 0 80 80' fill='none' xmlns='http://www.w3.org/2000/svg' width='40' height='40'><mask id='mask__sunset' maskUnits='userSpaceOnUse' x='0' y='0' width='80' height='80'><circle cx='40' cy='40' r='40' fill='white' /></mask><g mask='url(#mask__sunset)'><path fill='url(#gradient_paint0_linear_ClaraBarton)' d='M0 0h80v40H0z' /><path fill='url(#gradient_paint1_linear_ClaraBarton)' d='M0 40h80v40H0z' /></g><defs><linearGradient id='gradient_paint0_linear_ClaraBarton' x1='40' y1='0' x2='40' y2='40' gradientUnits='userSpaceOnUse'><stop stop-Color='#146a7c' /><stop offset='1' stop-Color='#f0ab3d' /></linearGradient><linearGradient id='gradient_paint1_linear_ClaraBarton' x1='40' y1='40' x2='40' y2=80 gradientUnits='userSpaceOnUse'><stop stop-Color='#c271b4' /><stop offset='1' stop-Color='#c20d90' /></linearGradient></defs></svg>"
  end
end
