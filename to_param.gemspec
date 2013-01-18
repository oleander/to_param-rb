$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "to_param/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "to_param"
  s.version     = ToParam::VERSION
  s.authors     = ["Linus Oleander"]
  s.email       = ["linus@oleander.nu "]
  s.homepage    = "http://github.com/oleander/to_param-rb"
  s.summary     = "A one-liner solution for ActiveRecord::Base#to_param"
  s.description = s.summary

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "database_cleaner"
end
