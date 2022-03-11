# frozen_string_literal: true

module BoringAvatar
  class Pixel < Base
    ELEMENTS = 64
    SIZE = 80

    def generate
      template(generate_colors)
    end

    private

    def generate_colors
      (0..ELEMENTS).to_a.each_with_object([]) do |index, arr|
        arr << Util.get_random_color(colors, num_from_name + index, range)
      end
    end

    def template(kolors)
      render_svg "<svg
        viewBox='0 0 #{SIZE} #{SIZE}'
        fill='none'
        xmlns='http://www.w3.org/2000/svg'
        width='#{size}'
        height='#{size}'>
        <mask
          id='mask__pixel'
          mask-type='alpha'
          maskUnits='userSpaceOnUse'
          x=0
          y=0
          width='#{SIZE}'
          height='#{SIZE}'>
          <circle cx='#{SIZE/2}' cy='#{SIZE/2}' r='#{SIZE/2}' fill='#fff' />
        </mask>
        <g mask='url(#mask__pixel)'>
          <rect width='10' height='10' fill='#{kolors[0]}' />
          <rect x='20' width='10' height='10' fill='#{kolors[1]}' />
          <rect x='40' width='10' height='10' fill='#{kolors[2]}' />
          <rect x='60' width='10' height='10' fill='#{kolors[3]}' />
          <rect x='10' width='10' height='10' fill='#{kolors[4]}' />
          <rect x='30' width='10' height='10' fill='#{kolors[5]}' />
          <rect x='50' width='10' height='10' fill='#{kolors[6]}' />
          <rect x='70' width='10' height='10' fill='#{kolors[7]}' />
          <rect y='10' width='10' height='10' fill='#{kolors[8]}' />
          <rect y='20' width='10' height='10' fill='#{kolors[9]}' />
          <rect y='30' width='10' height='10' fill='#{kolors[10]}' />
          <rect y='40' width='10' height='10' fill='#{kolors[11]}' />
          <rect y='50' width='10' height='10' fill='#{kolors[12]}' />
          <rect y='60' width='10' height='10' fill='#{kolors[13]}' />
          <rect y='70' width='10' height='10' fill='#{kolors[14]}' />
          <rect x='20' y='10' width='10' height='10' fill='#{kolors[15]}' />
          <rect x='20' y='20' width='10' height='10' fill='#{kolors[16]}' />
          <rect x='20' y='30' width='10' height='10' fill='#{kolors[17]}' />
          <rect x='20' y='40' width='10' height='10' fill='#{kolors[18]}' />
          <rect x='20' y='50' width='10' height='10' fill='#{kolors[19]}' />
          <rect x='20' y='60' width='10' height='10' fill='#{kolors[20]}' />
          <rect x='20' y='70' width='10' height='10' fill='#{kolors[21]}' />
          <rect x='40' y='10' width='10' height='10' fill='#{kolors[22]}' />
          <rect x='40' y='20' width='10' height='10' fill='#{kolors[23]}' />
          <rect x='40' y='30' width='10' height='10' fill='#{kolors[24]}' />
          <rect x='40' y='40' width='10' height='10' fill='#{kolors[25]}' />
          <rect x='40' y='50' width='10' height='10' fill='#{kolors[26]}' />
          <rect x='40' y='60' width='10' height='10' fill='#{kolors[27]}' />
          <rect x='40' y='70' width='10' height='10' fill='#{kolors[28]}' />
          <rect x='60' y='10' width='10' height='10' fill='#{kolors[29]}' />
          <rect x='60' y='20' width='10' height='10' fill='#{kolors[30]}' />
          <rect x='60' y='30' width='10' height='10' fill='#{kolors[31]}' />
          <rect x='60' y='40' width='10' height='10' fill='#{kolors[32]}' />
          <rect x='60' y='50' width='10' height='10' fill='#{kolors[33]}' />
          <rect x='60' y='60' width='10' height='10' fill='#{kolors[34]}' />
          <rect x='60' y='70' width='10' height='10' fill='#{kolors[35]}' />
          <rect x='10' y='10' width='10' height='10' fill='#{kolors[36]}' />
          <rect x='10' y='20' width='10' height='10' fill='#{kolors[37]}' />
          <rect x='10' y='30' width='10' height='10' fill='#{kolors[38]}' />
          <rect x='10' y='40' width='10' height='10' fill='#{kolors[39]}' />
          <rect x='10' y='50' width='10' height='10' fill='#{kolors[40]}' />
          <rect x='10' y='60' width='10' height='10' fill='#{kolors[41]}' />
          <rect x='10' y='70' width='10' height='10' fill='#{kolors[42]}' />
          <rect x='30' y='10' width='10' height='10' fill='#{kolors[43]}' />
          <rect x='30' y='20' width='10' height='10' fill='#{kolors[44]}' />
          <rect x='30' y='30' width='10' height='10' fill='#{kolors[45]}' />
          <rect x='30' y='40' width='10' height='10' fill='#{kolors[46]}' />
          <rect x='30' y='50' width='10' height='10' fill='#{kolors[47]}' />
          <rect x='30' y='60' width='10' height='10' fill='#{kolors[48]}' />
          <rect x='30' y='70' width='10' height='10' fill='#{kolors[49]}' />
          <rect x='50' y='10' width='10' height='10' fill='#{kolors[50]}' />
          <rect x='50' y='20' width='10' height='10' fill='#{kolors[51]}' />
          <rect x='50' y='30' width='10' height='10' fill='#{kolors[52]}' />
          <rect x='50' y='40' width='10' height='10' fill='#{kolors[53]}' />
          <rect x='50' y='50' width='10' height='10' fill='#{kolors[54]}' />
          <rect x='50' y='60' width='10' height='10' fill='#{kolors[55]}' />
          <rect x='50' y='70' width='10' height='10' fill='#{kolors[56]}' />
          <rect x='70' y='10' width='10' height='10' fill='#{kolors[57]}' />
          <rect x='70' y='20' width='10' height='10' fill='#{kolors[58]}' />
          <rect x='70' y='30' width='10' height='10' fill='#{kolors[59]}' />
          <rect x='70' y='40' width='10' height='10' fill='#{kolors[60]}' />
          <rect x='70' y='50' width='10' height='10' fill='#{kolors[61]}' />
          <rect x='70' y='60' width='10' height='10' fill='#{kolors[62]}' />
          <rect x='70' y='70' width='10' height='10' fill='#{kolors[63]}' />
        </g>
      </svg>"
    end
  end
end
