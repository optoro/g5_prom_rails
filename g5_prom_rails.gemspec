$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "g5_prom_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "g5_prom_rails"
  s.version     = G5PromRails::VERSION
  s.authors     = ["Don Petersen"]
  s.email       = ["don@donpetersen.net"]
  s.homepage    = "http://github.com/G5/g5_prom_rails"
  s.summary     = "Rails-friendly prometheus base"
  s.description = "Rails-friendly prometheus base"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "prometheus-client-mmap", "~> 0.7.0.beta"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sidekiq"
  s.add_development_dependency "tzinfo-data"
end
