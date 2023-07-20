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

This gem contains two rule sets:

1. Global rubocop rules in [rentacop.yml](rentacop.yml)
2. RSpec rubocop rules in [rspec.yml](rspec.yml)

### Configuring `.rubocop.yml`

If you are not using RSpec, add the following to the top of your `.rubocop.yml`:


```yaml
inherit_gem:
  rentacop: rentacop.yml
```

If you are using [rubocop-rspec](https://github.com/rubocop/rubocop-rspec), and wish to include the RSpec rules from this repository, add this instead:

```yaml
require: rubocop-rspec

inherit_gem:
  rentatop:
    - rentacop.yml
    - rspec.yml
```

### Recommended Template

This `.rubocop.yml` contains our full recommended configuration:


```yaml
# .rubocop.yml
require:
  - rubocop-performance
  - rubocop-rspec

inherit_gem:
  rentacop:
    - rentacop.yml
    - rspec.yml

inherit_mode:
  merge:
    - Exclude
    - Include

AllCops:
  TargetRubyVersion: 3.0
```

### Running `rubocop`

After creating your `.rubocop.yml` file, run:

```bash
$ rubocop
# or, if you do not have rubocop installed globally
$ bundle exec rubocop
```

To create a todo list, run:

```bash
$ rubocop --regenerate-todo
```

