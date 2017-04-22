# -*- encoding: utf-8 -*-
# stub: cocoapods-keys 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cocoapods-keys"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Orta Therox", "Samuel E. Giddins"]
  s.date = "2017-01-03"
  s.description = "A key value store for environment settings in Cocoa Apps."
  s.email = ["orta.therox@gmail.com", "segiddins@segiddins.me"]
  s.homepage = "https://github.com/orta/cocoapods-keys"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "CocoaPods Keys will store sensitive data in your Mac's keychain. Then on running `pod install` they will be installed into your app's source code by creating a Development Pod."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<osx_keychain>, [">= 0"])
      s.add_runtime_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<osx_keychain>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<osx_keychain>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end
