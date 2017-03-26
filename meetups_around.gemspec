# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meetups_around/version'

Gem::Specification.new do |spec|
    spec.name = 'meetups_around'
    spec.version       = MeetupsAround::VERSION
    spec.authors       = ['Seth Alexander']
    spec.email         = ['itz.saga@gmail.com']

    spec.summary       = 'Scrape events from meetup.com'
    spec.description   = 'CLI gem that returns the specified meetups from meetup.com'
    spec.homepage      = 'https://github.com/itzsaga/meetups-around'
    spec.license       = 'MIT'
    spec.required_ruby_version = '>= 2.4'

    spec.files = `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
    end
    spec.bindir        = 'exe'
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ['lib']

    spec.add_development_dependency 'bundler', '~> 1.14'
    # spec.add_development_dependency 'rake', '~> 10.0'
    spec.add_development_dependency 'pry', '~> 0.10'
    spec.add_dependency 'nokogiri', '~> 1.7'
end
