[![Build Status](https://travis-ci.org/pamit/persian_numbers.svg?branch=master)](https://travis-ci.org/pamit/persian_numbers)
[![Coverage Status](https://coveralls.io/repos/github/pamit/persian_numbers/badge.svg?branch=master)](https://coveralls.io/github/pamit/persian_numbers?branch=master)
[![Gem Version](https://badge.fury.io/rb/persian_numbers.svg)](https://badge.fury.io/rb/persian_numbers)

# PersianNumbers

This gem serves as a set of utility functions for Persian numbers, such as conversion of numeric inputs to their equivalent values in Persian words.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'persian_numbers'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install persian_numbers


## Usage

To convert a number to it equivalent Persian words:

```ruby
PersianNumbers.translate_to_words(35)
# سی و پنج

PersianNumbers.translate_to_words(12345)
# دوازده هزار و سیصد و چهل و پنج
```

You can also run the following command to see a demo:

```ruby
ruby demo/generate.rb
```

## CHANGELOG

[https://github.com/pamit/persian_numbers/blob/master/CHANGELOG.md](https://github.com/pamit/persian_numbers/blob/master/CHANGELOG.md)


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pamit/persian_numbers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/pamit/persian_numbers/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Code of Conduct

Everyone interacting in the PersianNumbers project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pamit/persian_numbers/blob/master/CODE_OF_CONDUCT.md).
