# frozen_string_literal: true

module BoringAvatar
  class Ring < Base
    ELEMENTS = 5
    SIZE = 90

    def generate
      template(generate_colors)
    end

    private

    def generate_colors
      (0..ELEMENTS).to_a.each_with_object([]) do |index, arr|
        arr << Util.get_random_color(colors, num_from_name + index, range)
      end.then do |color_list|
        [
          color_list[0],
          color_list[1],
          color_list[1],
          color_list[2],
          color_list[2],
          color_list[3],
          color_list[3],
          color_list[0],
          color_list[4]
        ]
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
            id='mask__ring'
            maskUnits='userSpaceOnUse'
            x='0'
            y='0'
            width='#{SIZE}'
            height='#{SIZE}'>
            <circle cx='#{SIZE/2}' cy='#{SIZE/2}' r='#{SIZE/2}' fill='#fff' />
          </mask>
          <g mask='url(#mask__ring)'>
            <path d='M0 0h90v45H0z' fill='#{kolors[0]}' />
            <path d='M0 45h90v45H0z' fill='#{kolors[1]}' />
            <path d='M83 45a38 38 0 00-76 0h76z' fill='#{kolors[2]}' />
            <path d='M83 45a38 38 0 01-76 0h76z' fill='#{kolors[3]}' />
            <path d='M77 45a32 32 0 10-64 0h64z' fill='#{kolors[4]}' />
            <path d='M77 45a32 32 0 11-64 0h64z' fill='#{kolors[5]}' />
            <path d='M71 45a26 26 0 00-52 0h52z' fill='#{kolors[6]}' />
            <path d='M71 45a26 26 0 01-52 0h52z' fill='#{kolors[7]}' />
            <circle cx='45' cy='45' r='23' fill='#{kolors[8]}' />
          </g>
        </svg>"
    end
  end
end
