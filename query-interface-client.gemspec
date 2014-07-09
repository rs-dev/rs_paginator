# -*- encoding: utf-8 -*-

require File.join(File.dirname(__FILE__), 'lib', 'rs_paginator', 'version')

require 'date'

Gem::Specification.new do |s|
  s.name = "rs_paginator"
  s.version = RsPaginator::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sebastian Weiss <sebastian.weiss@radarservices.com", "Martin Natano <martin.natano@radarservices.com"]
  s.date = Date.today.strftime
  s.description = "RadarServices (Bootstrap) Paginator"
  s.email = "gems [a] radarservices [d] com"
  s.files            = `git ls-files`.split("\n").reject { |file| file == '.gitignore' }
  s.test_files       = `git ls-files -- {spec}/*`.split("\n")
  s.extra_rdoc_files = %w[LICENSE README.md]

  s.homepage = "http://github.com/rs-dev/rs_paginator"
  s.require_paths = ["lib"]
  s.summary = "RadarServices (Bootstrap) Paginator"
  s.license = "ISC"

  s.add_runtime_dependency(%q<i18n>)
end
