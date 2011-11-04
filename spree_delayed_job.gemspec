# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_delayed_job/version"

Gem::Specification.new do |s|
  s.name        = "spree_delayed_job"
  s.version     = SpreeDelayedJob::VERSION
  s.authors     = ["Giuseppe Privitera"]
  s.email       = ["priviterag@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Spree delayed job}
  s.description = %q{Spree extension gor delayed_job gem}

  s.rubyforge_project = "spree_delayed_job"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency "delayed_job"
  
end
