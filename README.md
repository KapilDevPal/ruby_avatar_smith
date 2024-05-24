# RubyAvatarSmith

Welcome to RubyAvatarSmith! This gem allows you to create avatars with text annotations easily.
RubyAvatarSmith is a Ruby gem that generates random images with specified dimensions and text annotations using the RMagick library.


## Installation

To install the gem, add it to your Gemfile by executing:

```bash
$ bundle add ruby_avatar_smith
```
Add this line to your application's Gemfile:

```bash
$ gem install ruby_avatar_smith
```
And then execute:

```bash
bundle install
```
## Usage

To generate a random image with specific dimensions and text annotation, you can use the create_random_image method provided by the RubyAvatarSmith module.
```bash
require 'ruby_avatar_smith'

random = RubyAvatarSmith.create_random_image(200, 200, "John")

random.write("output.png")

```
Then, you can use the create_random_image method to generate avatars with text annotations:

This will create a 200x200 image with the text "Hello, World!" annotated on it and save it as output.png.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/KapilDevPal/ruby_avatar_smith. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/KapilDevPal/ruby_avatar_smith/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RubyAvatarSmith project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/KapilDevPal/ruby_avatar_smith/blob/master/CODE_OF_CONDUCT.md).
