# ReloadAttribute

[![Build Status](https://travis-ci.org/yelvert/reload-attribute.svg?branch=master)](https://travis-ci.org/yelvert/reload-attribute)

This is a RubyGem for Rails/ActiveRecord models to allow updating a model instance's attributes from the database.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'reload-attribute'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install reload-attribute
```

## Usage
```ruby
widget = Widget.find(123)
#=> #<Widget id: 123, foo: "foo_original", bar: "bar_original">

Widget.find(123)
#=> #<Widget id: 123, foo: "foo_updated", bar: "bar_updated">

widget
#=> #<Widget id: 123, foo: "foo_original", bar: "bar_original">

widget.reload_attribute(:foo, :bar)
#=> { foo: "foo_updated", bar: "bar_updated" }

widget
#=> #<Widget id: 123, foo: "foo_updated", bar: "bar_updated">

```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
