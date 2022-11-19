# Rentacop

A more relaxed default set of RuboCop rules.

## Install

Run:

```bash
$ gem install rentacop
```

Or, add this line to your Gemfile:

```ruby
group :test, :development do
  gem "rentacop"
end
```

## Prerequisites

We assume you have rubocop installed either globally:

```bash
$ gem install rubocop
```

or in your bundle

```bash
$ bundle add rubocop --group development,test
```

## Usage

Add the following to the top of your `.rubocop.yml`:

```yaml
inherit_gem:
  rentacop: rentacop.yml
```

And run:

```bash
$ rubocop
# or, if your rubocop is not installed globally
$ bundle exec rubocop
```
