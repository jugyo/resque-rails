# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resque-rails/version"

Gem::Specification.new do |s|
  s.name        = "resque-rails"
  s.version     = Resque::Rails::VERSION
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{The railtie for setup resque.}
  s.description = %q{The railtie for setup resque. It provides an initializer and rake tasks.}

  s.rubyforge_project = "resque-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "resque"
end
