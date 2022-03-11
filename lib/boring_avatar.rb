require "boring_avatar/version"

require "boring_avatar/util"
require "boring_avatar/avatar/base"
require "boring_avatar/avatar/beam"
require "boring_avatar/avatar/bauhaus"
require "boring_avatar/avatar/marble"
require "boring_avatar/avatar/pixel"
require "boring_avatar/avatar/ring"
require "boring_avatar/avatar/sunset"

module BoringAvatar
  class Error < StandardError; end
  class NotImplementedError < StandardError; end
end
