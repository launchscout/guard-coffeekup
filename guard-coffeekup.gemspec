# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard-coffeekup/version"

Gem::Specification.new do |s|
  s.name        = "guard-coffeekup"
  s.version     = Guard::Coffeekup::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Nelson"]
  s.email       = ["chris@gaslightsoftware.com"]
  s.homepage    = ""
  s.summary     = %q{coffeekup guard plugin}
  s.description = %q{This will compile your coffeekup plugin.  You'll need to have coffeekup installed.  Supported options are output and namespace}

  s.rubyforge_project = "guard-coffeekup"
  
  s.add_dependency "guard"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
