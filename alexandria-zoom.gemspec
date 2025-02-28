# frozen_string_literal: true

RUBY_ZOOM_VERSION = "0.6.0"

Gem::Specification.new do |s|
  s.name = "alexandria-zoom"
  s.version = RUBY_ZOOM_VERSION
  s.homepage = "https://github.com/mvz/alexandria-zoom"
  s.platform = Gem::Platform::RUBY
  s.author = ["Matijs van Zuijlen", "Laurent Sansonetti", "Ed Summers"]
  s.summary = <<~TEXT
    Ruby/ZOOM provides a Ruby binding to the Z39.50 Object-Orientation Model
    (ZOOM), an abstract object-oriented programming interface to a subset of
    the services specified by the Z39.50 standard, also known as the
    international standard ISO 23950.
  TEXT

  s.license = "LGPL-2.1"
  s.required_ruby_version = ">= 2.7.0"

  s.metadata["rubygems_mfa_required"] = "true"

  s.files = File.read("Manifest.txt").split
  s.extensions = "ext/zoom/extconf.rb"

  s.add_dependency "pkg-config", "~> 1.5.1"

  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rake-compiler", "~> 1.2"
  s.add_development_dependency "rake-manifest", "~> 0.2.0"
  s.add_development_dependency "rubocop", "~> 1.51"
  s.add_development_dependency "test-unit", "~> 3.3"
end
