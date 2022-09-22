# frozen_string_literal: true

require "json"

module Util
  class << self
    def get_number(name)
      name.chars
        .map(&:ord)
        .inject(:+)
    end

    def get_random_color(colors, number, range)
      colors[number % range]
    end

    def get_unit(number, range, index = nil)
      value = number % range
      if index && (get_digit(number, index) % 2) == 0
        return -value
      end
      value
    end

    def get_digit(number, ntn)
      ((number / (10 ** ntn)) % 10).to_i
    end

    def get_boolean(number, ntn)
      !(get_digit(number, ntn) % 2 > 0)
    end

    def get_contrast(hex)
      red, green, blue = hex.delete_prefix("#").scan(/../).map { |c| c.to_i(16) }
      yiq = ((red * 299) + (green * 587) + (blue * 114)) / 1000
      yiq > 128 ? "black" : "white"
    end

    def random_palette
      color_palettes[(0..99).to_a.sample]
    end

    private

    def color_palettes
      @color_palettes ||= JSON.parse(File.read("./color_palettes.json"))
    end
  end
end
