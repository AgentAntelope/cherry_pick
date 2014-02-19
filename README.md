[![Gem Version](https://badge.fury.io/rb/cherry_pick.png)](http://badge.fury.io/rb/cherry_pick)

# CherryPick

Allows class and instance methods to be taken from modules, without including/extending the entire module.

This gem is not intended for serious use.

## Installation

Add this line to your application's Gemfile:

    gem 'cherry_pick'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cherry_pick

## Usage

Include the module

    include CherryPick

Then declare your cherrypicked methods, and where they're coming from.

    cherry_pick :foo, Foo
    class_cherry_pick :bar, :baz, Bam

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
