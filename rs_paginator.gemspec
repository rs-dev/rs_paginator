# -*- encoding: utf-8 -*-

require File.join(File.dirname(__FILE__), 'lib', 'rs_paginator', 'version')

Gem::Specification.new do |s|
  s.name = "rs_paginator"
  s.version = RsPaginator::VERSION
  s.authors = [
    "Sebastian Weiss <sebastian.weiss@radarservices.com",
    "Martin Natano <martin.natano@radarservices.com",
  ]

  s.description = "RadarServices (Bootstrap) Paginator"
  s.summary = "RadarServices (Bootstrap) Paginator"
  s.homepage = "https://gitlab.prod.radar.lan/development/rs_paginator"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://artifacts.radarservices.net'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  s.files            = `git ls-files`.split("\n").reject { |file| file == '.gitignore' }
  s.test_files       = `git ls-files -- {spec}/*`.split("\n")
  s.extra_rdoc_files = %w[LICENSE README.md]
  s.require_paths = ["lib"]

  s.add_runtime_dependency(%q<i18n>)
  s.add_runtime_dependency(%q<actionview>, '~>5.2')

  s.add_development_dependency(%q<bundler-audit>)
  s.add_development_dependency(%q<rspec>)
  s.add_development_dependency(%q<rspec_junit_formatter>)
end
