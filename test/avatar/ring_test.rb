require 'test_helper'

class BoringAvatar::RingTest < Minitest::Test
  def test_it_renders_svg
    assert_equal result, BoringAvatar::Ring.new.generate
  end

  private

  def result
    "<svg viewBox='0 0 90 90' fill='none' role='img' xmlns='http://www.w3.org/2000/svg' width='90' height='90'><title>Clara Barton</title><mask id='mask__ring' maskUnits='userSpaceOnUse' x='0' y='0' width='90' height='90'><rect width='90' height='90' rx='180' fill='#FFFFFF'></rect></mask><g mask='url(#mask__ring)'><path d='M0 0h90v45H0z' fill='#92a1c6'></path><path d='M0 45h90v45H0z' fill='#146a7c'></path><path d='M83 45a38 38 0 00-76 0h76z' fill='#146a7c'></path><path d='M83 45a38 38 0 01-76 0h76z' fill='#f0ab3d'></path><path d='M77 45a32 32 0 10-64 0h64z' fill='#f0ab3d'></path><path d='M77 45a32 32 0 11-64 0h64z' fill='#c271b4'></path><path d='M71 45a26 26 0 00-52 0h52z' fill='#c271b4'></path><path d='M71 45a26 26 0 01-52 0h52z' fill='#92a1c6'></path><circle cx='45' cy='45' r='23' fill='#c20d90'></circle></g></svg>"
  end
end
