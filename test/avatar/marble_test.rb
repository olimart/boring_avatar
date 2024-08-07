require "test_helper"

class BoringAvatar::MarbleTest < Minitest::Test
  def test_it_renders_svg
    assert_equal result, BoringAvatar::Marble.new.generate
  end

  private

  def result
    "<svg viewBox='0 0 80 80' fill='none' xmlns='http://www.w3.org/2000/svg' width='40' height='40'><mask id='mask__marble' maskUnits='userSpaceOnUse' x='0' y='0' width='80' height='80'><path d='M80 40C80 17.909 62.091 0 40 0S0 17.909 0 40s17.909 40 40 40 40-17.909 40-40z' fill='#fff' /></mask><g mask='url(#mask__marble)'><path d='M80 40C80 17.909 62.091 0 40 0S0 17.909 0 40s17.909 40 40 40 40-17.909 40-40z' fill='#146a7c' /><path filter='url(#prefix__filter0_f)' d='M32.414 59.35L50.376 70.5H72.5v-71H33.728L26.5 13.381l19.057 27.08L32.414 59.35z' fill='#f0ab3d' transform='translate(-6 6) rotate(-22 40 40) scale(1.3)' /><path filter='url(#prefix__filter0_f)' style='mix-blend-mode: overlay;' d='M22.216 24L0 46.75l14.108 38.129L78 86l-3.081-59.276-22.378 4.005 12.972 20.186-23.35 27.395L22.215 24z' fill='#c271b4' transform='translate(5 -5) rotate(213 40 40) scale(1.3)' /></g><defs><filter id='prefix__filter0_f' filterUnits='userSpaceOnUse' colorInterpolationFilters='sRGB' ><feFlood flood-opacity='0' result='BackgroundImageFix' /><feBlend in='SourceGraphic' in2='BackgroundImageFix' result='shape' /><feGaussianBlur stdDeviation='7' result='effect1_foregroundBlur' /></filter></defs></svg>"
  end
end
