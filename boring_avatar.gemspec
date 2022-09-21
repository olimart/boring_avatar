require_relative 'lib/boring_avatar/version'

Gem::Specification.new do |spec|
  spec.name          = "boring_avatar"
  spec.version       = BoringAvatar::VERSION
  spec.authors       = ["Olivier"]
  spec.email         = ["olivier@yafoy.com"]

  spec.summary       = "Generate Boring Avatars"
  spec.description   = "This is a simple Ruby implementation of Boring Avatars library"
  spec.homepage      = "https://github.com/olimart/boring_avatar"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/olimart/boring_avatar"
  spec.metadata["changelog_uri"] = "https://github.com/olimart/boring_avatar/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
