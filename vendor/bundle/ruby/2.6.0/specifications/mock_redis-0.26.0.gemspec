# -*- encoding: utf-8 -*-
# stub: mock_redis 0.26.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mock_redis".freeze
  s.version = "0.26.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shane da Silva".freeze, "Samuel Merritt".freeze]
  s.date = "2020-08-26"
  s.description = "Instantiate one with `redis = MockRedis.new` and treat it like you would a normal Redis object. It supports all the usual Redis operations.".freeze
  s.email = ["shane@dasilva.io".freeze]
  s.homepage = "https://github.com/sds/mock_redis".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Redis mock that just lives in memory; useful for testing.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<redis>.freeze, ["~> 4.2.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    else
      s.add_dependency(%q<redis>.freeze, ["~> 4.2.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    end
  else
    s.add_dependency(%q<redis>.freeze, ["~> 4.2.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
  end
end
