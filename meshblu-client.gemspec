$:.push File.expand_path("../lib", __FILE__)
require "meshblu/client/version"

Gem::Specification.new do |s|
  s.name        = 'meshblu-client'
  s.version     = Meshblu::Client::VERSION
  s.summary     = "meshblu-client"
  s.description = "A Ruby interface for meshblu"
  s.authors     = ["Jade Meskill"]
  s.email       = 'j@octoblu.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "socket.io-client-simple"
  s.add_development_dependency "rspec"
  
  s.homepage    =
    'http://rubygems.org/gems/meshblu-client'
  s.license       = 'MIT'
end
