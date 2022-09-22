# frozen_string_literal: true

module BoringAvatar
  class Sunset < Base
    ELEMENTS = 4.freeze
    SIZE = 80.freeze

    private

    def template
      "<svg
        viewBox='0 0 #{SIZE} #{SIZE}'
        fill='none'
        xmlns='http://www.w3.org/2000/svg'
        width='#{size}'
        height='#{size}'>
        <mask
          id='mask__sunset'
          maskUnits='userSpaceOnUse'
          x='0'
          y='0'
          width='#{SIZE}'
          height='#{SIZE}'>
          <circle cx='#{SIZE/2}' cy='#{SIZE/2}' r='#{SIZE/2}' fill='white' />
        </mask>
        <g mask='url(#mask__sunset)'>
          <path fill='url(#gradient_paint0_linear_#{avatar_name})' d='M0 0h80v40H0z' />
          <path fill='url(#gradient_paint1_linear_#{avatar_name})' d='M0 40h80v40H0z' />
        </g>
        <defs>
          <linearGradient
            id='gradient_paint0_linear_#{avatar_name}'
            x1='#{SIZE/2}'
            y1='0'
            x2='#{SIZE/2}'
            y2='#{SIZE/2}'
            gradientUnits='userSpaceOnUse'>
            <stop stop-Color='#{color_palette[0]}' />
            <stop offset='1' stop-Color='#{color_palette[1]}' />
          </linearGradient>
          <linearGradient
            id='gradient_paint1_linear_#{avatar_name}'
            x1='#{SIZE/2}'
            y1='#{SIZE/2}'
            x2='#{SIZE/2}'
            y2=#{SIZE}
            gradientUnits='userSpaceOnUse'>
            <stop stop-Color='#{color_palette[2]}' />
            <stop offset='1' stop-Color='#{color_palette[3]}' />
          </linearGradient>
        </defs>
      </svg>"
    end

    def avatar_name
      @avatar_name ||= name.strip.gsub(" ", "")
    end

    def color_palette
      @color_palette ||= (0..ELEMENTS).to_a.each_with_object([]) do |index, arr|
        arr << Util.get_random_color(colors, num_from_name + index, range)
      end
    end
  end
end
