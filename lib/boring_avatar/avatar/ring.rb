# frozen_string_literal: true

module BoringAvatar
  class Ring < Base
    SIZE = 90

    def generate
      template
    end

    private

    def template
      render_svg "<svg
        viewBox='0 0 #{SIZE} #{SIZE}'
        fill='none'
        role='img'
        xmlns='http://www.w3.org/2000/svg'
        width='#{SIZE}'
        height='#{SIZE}'>
        <title>#{name}</title>
        <mask
          id='mask__ring'
          maskUnits='userSpaceOnUse'
          x='0'
          y='0'
          width='#{SIZE}'
          height='#{SIZE}'>
          <rect
            width='#{SIZE}'
            height='#{SIZE}'
            rx='180'
            fill='#FFFFFF'>
          </rect>
        </mask>
        <g mask='url(#mask__ring)'>
          <path d='M0 0h90v45H0z' fill='#{colors[0]}'></path>
          <path d='M0 45h90v45H0z' fill='#{colors[1]}'></path>
          <path d='M83 45a38 38 0 00-76 0h76z' fill='#{colors[1]}'></path>
          <path d='M83 45a38 38 0 01-76 0h76z' fill='#{colors[2]}'></path>
          <path d='M77 45a32 32 0 10-64 0h64z' fill='#{colors[2]}'></path>
          <path d='M77 45a32 32 0 11-64 0h64z' fill='#{colors[3]}'></path>
          <path d='M71 45a26 26 0 00-52 0h52z' fill='#{colors[3]}'></path>
          <path d='M71 45a26 26 0 01-52 0h52z' fill='#{colors[0]}'></path>
          <circle cx='45' cy='45' r='23' fill='#{colors[4]}'></circle>
        </g>
      </svg>"
    end
  end
end
