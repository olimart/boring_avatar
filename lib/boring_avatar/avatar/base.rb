# frozen_string_literal: true

module BoringAvatar
  class Base
    COLORS = %w[#92a1c6 #146a7c #f0ab3d #c271b4 #c20d90].freeze
    NAME = "Clara Barton".freeze
    SIZE = 40.freeze

    attr_reader :colors, :name, :size, :opts, :num_from_name, :range

    def initialize(colors: COLORS, name: NAME, size: SIZE, **opts)
      @colors = case
      when colors == "random"
        Util.random_palette
      when colors.nil? || colors.empty?
        COLORS
      else
        colors
      end
      @name = name
      @size = size.nil? ? SIZE : size
      @opts = opts
      @num_from_name = Util.get_number(name)
      @range = @colors.length
    end

    def generate
      render_svg(template)
    end

    private

    def template
      raise NotImplementedError
    end

    def render_svg(text)
      text
        .gsub(/>\s+</, "><")
        .gsub(/\s+/, " ")
        .strip
    end
  end
end
