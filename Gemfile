source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in sidekiq-batch-ui.gemspec.
gemspec

gem "puma"

gem "sqlite3"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
gem 'sidekiq-batch-ui', path: '../sidekiq-batch-ui'
gem 'sidekiq-batch', '~> 0.2.0'