# Officesimplify

OfficeSimplify is an employee management tool [https://www.officesimplify.com](https://www.officesimplify.com)

## Installation

Add this line to your application's Gemfile:

    gem 'officesimplify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install officesimplify

## Configuration

Add api_key to an initializer

    Officesimplify.api_key = 'your_token'


## Usage

Request events data, GET

    Officesimplify.events(parameters)

Parameters:
  - email
  - date (unix timestamp)
  - leave_type (the name for leave type)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Requestgems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/officesimplify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

