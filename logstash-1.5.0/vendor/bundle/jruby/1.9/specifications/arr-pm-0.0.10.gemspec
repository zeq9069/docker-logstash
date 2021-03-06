# -*- encoding: utf-8 -*-
# stub: arr-pm 0.0.10 ruby lib lib

Gem::Specification.new do |s|
  s.name = "arr-pm"
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "lib"]
  s.authors = ["Jordan Sissel"]
  s.date = "2015-04-14"
  s.description = "This library allows to you to read and write rpm packages. Written in pure ruby because librpm is not available on all systems"
  s.email = ["jls@semicomplete.com"]
  s.licenses = ["Apache 2"]
  s.rubygems_version = "2.4.5"
  s.summary = "RPM reader and writer library"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cabin>, ["> 0"])
      s.add_development_dependency(%q<flores>, ["> 0"])
    else
      s.add_dependency(%q<cabin>, ["> 0"])
      s.add_dependency(%q<flores>, ["> 0"])
    end
  else
    s.add_dependency(%q<cabin>, ["> 0"])
    s.add_dependency(%q<flores>, ["> 0"])
  end
end
