$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "to_param/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "to_param"
  s.version     = ToParam::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ToParam."
  s.description = "TODO: Description of ToParam."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "database_cleaner"
end
