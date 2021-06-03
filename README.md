# BoringAvatar

This is a Ruby implementation of [Boring Avatars](https://boringavatars.com)

Currently only supporting the following variants:
- Bauhaus
- Beam
- Marble
- Sunset

## Installation

Add this line to your application's Gemfile:

```ruby
gem "BoringAvatar"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install BoringAvatar

## Usage

```ruby
BoringAvatar::Bauhaus.generate
BoringAvatar::Beam.generate(name: "John Doe")
BoringAvatar::Marble.generate(name: "John Doe", size: 40)
BoringAvatar::Sunset.generate(name: "John Doe", size: 40, colors: %w[#a3a948 #edb92e #f85931 #ce1836 #009989])
```

There is also an [online service](https://github.com/hihayk/boring-avatars-service/) should you wish to build a wrapper around the API.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/BoringAvatar.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
