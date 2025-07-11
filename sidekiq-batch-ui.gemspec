require_relative "lib/sidekiq-batch-ui/version"

Gem::Specification.new do |spec|
  spec.name        = "sidekiq-batch-ui"
  spec.version     = SidekiqBatchUi::VERSION
  spec.authors     = ["Tiago Guerra"]
  spec.email       = ["tiago.antoniazi@gmail.com"]
  spec.homepage    = "https://github.com/tantoniazi/sidekiq-batch-ui"
  spec.summary     = "Summary of SidekiqBatchUi."
  spec.description = "Description of SidekiqBatchUi."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tantoniazi/sidekiq-batch-ui"
  spec.metadata["changelog_uri"] = "https://github.com/tantoniazi/sidekiq-batch-ui/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3"
  spec.add_dependency "sidekiq-batch", "~> 0.2.0"
end
