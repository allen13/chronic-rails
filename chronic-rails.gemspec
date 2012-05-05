$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chronic-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chronic-rails"
  s.version     = ChronicRails::VERSION
  s.authors     = ["allen13"]
  s.homepage    = "https://github.com/allen13/chronic_date"
  s.summary     = "Allows a rails date field to take a string which will get parsed by chronic."
  s.description = "Allows a rails date field to take a string which will get parsed by chronic."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "chronic"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
