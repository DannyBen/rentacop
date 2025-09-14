lib = File.expand_path 'lib', __dir__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib
require 'rentacop/version'

Gem::Specification.new do |gem|
  gem.name        = 'rentacop'
  gem.version     = Rentacop::VERSION
  gem.summary     = 'Collection of more relaxed rubocop rules'
  gem.description = 'Collection of more relaxed rubocop rules'
  gem.authors     = ['Danny Ben Shitrit']
  gem.email       = 'db@dannyben.com'
  gem.files       = ['LICENSE', 'README.md', 'rentacop.yml', 'rspec.yml', 'lib/rentacop/version.rb']
  gem.homepage    = 'https://github.com/dannyben/rentacop'
  gem.license     = 'MIT'
  gem.required_ruby_version = '>= 3.2'

  # gem.add_dependency "rubocop", "~> 1.39"

  gem.metadata = {
    'bug_tracker_uri'       => 'https://github.com/DannyBen/rentacop/issues',
    'changelog_uri'         => 'https://github.com/DannyBen/rentacop/blob/master/CHANGELOG.md',
    'homepage_uri'          => 'https://github.com/dannyben/rentacop',
    'source_code_uri'       => 'https://github.com/DannyBen/rentacop',
    'rubygems_mfa_required' => 'true',
  }
end
