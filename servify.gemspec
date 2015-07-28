# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'servify/version'

Gem::Specification.new do |spec|
  spec.name          = "servify"
  spec.version       = Servify::VERSION
  spec.authors       = ["Ilya Doroshin"]
  spec.email         = ["idoroshin@aligntech.com"]

  spec.summary       = %q{Kills existing server on given port}
  spec.description   = %q{Helps don't think about starting your rails server, if there's any server already rinning, it'll kill it}
  spec.homepage      = "https://github.com/ilyadoroshin/servify"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   << 'servify'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
