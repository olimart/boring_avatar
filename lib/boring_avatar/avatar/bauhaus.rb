# frozen_string_literal: true

module BoringAvatar
  class Bauhaus < Base
    ELEMENTS = 4.freeze
    SIZE = 80.freeze

    def generate
      template(generate_colors)
    end

    private

    def generate_colors
      (0..ELEMENTS).to_a.each_with_object([]) do |i, arr|
        arr << {
          color: Util.get_random_color(colors, num_from_name + i, range),
          translateX: Util.get_unit(num_from_name * (i + 1), (SIZE/2 - (i + 17)), 1),
          translateY: Util.get_unit(num_from_name * (i + 1), (SIZE/2 - (i + 17)), 2),
          rotate: Util.get_unit(num_from_name * (i + 1), 360),
          isSquare: Util.get_boolean(num_from_name, 2)
        }
      end
    end

    def template(properties)
      render_svg "<svg
        viewBox='0 0 #{SIZE} #{SIZE}'
        fill='none'
        xmlns='http://www.w3.org/2000/svg'
        width='#{size}'
        height='#{size}'>
        <mask
          id='mask__bauhaus'
          maskUnits='userSpaceOnUse'
          x='0'
          y='0'
          width='#{SIZE}'
          height='#{SIZE}'>
          <rect width='#{SIZE}' height='#{SIZE}' rx='#{SIZE / 2}' fill='#fff' />
        </mask>
        <g mask='url(#mask__bauhaus)'>
          <rect
            width='#{SIZE}'
            height='#{SIZE}'
            rx='#{SIZE / 2}'
            fill='#{properties[0][:color]}'
          />
          <rect
            x='#{(SIZE - 60) / 2}'
            y='#{(SIZE - 20) / 2}'
            width='#{SIZE}'
            height='#{properties[1][:isSquare] ? SIZE : SIZE / 8}'
            fill='#{properties[1][:color]}'
            transform='translate(#{properties[1][:translateX]} #{properties[1][:translateY]}) rotate(#{properties[1][:rotate]} #{SIZE / 2} #{SIZE / 2})'
          />
          <circle
            cx='#{SIZE / 2}'
            cy='#{SIZE / 2}'
            fill='#{properties[2][:color]}'
            r='#{SIZE / 5}'
            transform='translate(#{properties[2][:translateX]} #{properties[2][:translateY]})'
            />
          <line
            x1='0'
            y1='#{SIZE / 2}'
            x2='#{SIZE}'
            y2='#{SIZE / 2}'
            stroke-width='2'
            stroke='#{properties[3][:color]}'
            transform='translate(#{properties[3][:translateX]} #{properties[3][:translateY]}) rotate(#{properties[3][:rotate]} #{SIZE / 2} #{SIZE / 2})'
          />
        </g>
      </svg>"
    end
  end
end
