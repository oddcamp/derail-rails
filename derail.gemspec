$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "derail/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "derail-rails"
  s.version     = Derail::VERSION
  s.authors     = ["Ivan Novosad"]
  s.email       = ["ivan.novosad@gmail.com"]
  # s.homepage    = "TODO"
  s.summary     = "Destroy a rails project."
  s.description = "Destroy a rails project (Drop DB, purge ES indices, delete project directory)."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0"

  s.add_development_dependency "sqlite3"
end
