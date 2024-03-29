# frozen_string_literal: true

module BoringAvatar
  class Beam < Base
    SIZE = 36.freeze

    private

    def template
      mouth = if properties[:isMouthOpen]
        "<path d='M15 #{19 + properties[:mouthSpread]} c2 1 4 1 6 0' stroke='#{properties[:faceColor]}' fill='none' stroke-linecap='round' />"
      else
        "<path d='M13, #{19 + properties[:mouthSpread]} a1,0.75 0 0,0 10,0' fill='#{properties[:faceColor]}' />"
      end

      "<svg
        viewBox='0 0 #{SIZE} #{SIZE}'
        fill='none'
        xmlns='http://www.w3.org/2000/svg'
        width='#{size}'
        height='#{size}'>
        <mask
          id='mask__beam'
          maskUnits='userSpaceOnUse'
          x='0'
          y='0'
          width='#{SIZE}'
          height='#{SIZE}'>
          <rect
            width='#{SIZE}'
            height='#{SIZE}'
            rx='20'
            fill='white'
          />
        </mask>
        <g mask='url(#mask__beam)' fill='transparent'>
          <rect
            width='#{SIZE}'
            height='#{SIZE}'
            rx='20'
            fill='#{properties[:backgroundColor]}'
          />
          <rect
            x='0'
            y='0'
            width='#{SIZE}'
            height='#{SIZE}'
            transform='translate(#{properties[:wrapperTranslateX]} #{properties[:wrapperTranslateY]}) rotate(#{properties[:wrapperRotate]} #{SIZE / 2} #{SIZE / 2}) scale(#{properties[:wrapperScale]})'
            fill='#{properties[:wrapperColor]}'
            rx='#{properties[:isCircle] ? SIZE : SIZE/6}'
          />
          <g transform='translate(#{properties[:faceTranslateX]} #{properties[:faceTranslateY]}) rotate(#{properties[:faceRotate]} #{SIZE / 2} #{SIZE / 2})'>
            #{mouth}
            <rect x='#{14 - properties[:eyeSpread]}' y='14' width='1.5' height='2' rx='1' stroke='none' fill='#{properties[:faceColor]}' />
            <rect x='#{20 + properties[:eyeSpread]}' y='14' width='1.5' height='2' rx='1' stroke='none' fill='#{properties[:faceColor]}' />
          </g>
        </g>
      </svg>"
    end

    def properties
      wrapperColor = Util.get_random_color(colors, num_from_name, range)
      preTranslateX = Util.get_unit(num_from_name, 10, 1)
      wrapperTranslateX = preTranslateX < 5 ? (preTranslateX + SIZE/9) : preTranslateX
      preTranslateY = Util.get_unit(num_from_name, 10, 2)
      wrapperTranslateY = preTranslateY < 5 ? (preTranslateY + SIZE/9) : preTranslateY

      @properties ||= {
        wrapperColor: wrapperColor,
        faceColor: Util.get_contrast(wrapperColor),
        backgroundColor: Util.get_random_color(colors, num_from_name + 13, range),
        wrapperTranslateX: wrapperTranslateX,
        wrapperTranslateY: wrapperTranslateY,
        wrapperRotate: Util.get_unit(num_from_name, 360),
        wrapperScale: 1 + (Util.get_unit(num_from_name, SIZE / 12) / 10.to_f),
        isMouthOpen: Util.get_boolean(num_from_name, 2),
        isCircle: Util.get_boolean(num_from_name, 1),
        eyeSpread: Util.get_unit(num_from_name, 5) ,
        mouthSpread: Util.get_unit(num_from_name, 3),
        faceRotate: Util.get_unit(num_from_name, 10, 3),
        faceTranslateX: wrapperTranslateX > (SIZE/6) ? wrapperTranslateX/2.to_f : Util.get_unit(num_from_name, 8, 1),
        faceTranslateY: wrapperTranslateY > (SIZE/6) ? wrapperTranslateY/2.to_f : Util.get_unit(num_from_name, 7, 2)
      }
    end
  end
end
