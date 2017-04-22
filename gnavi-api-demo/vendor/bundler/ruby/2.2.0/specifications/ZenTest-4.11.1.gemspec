# -*- encoding: utf-8 -*-
# stub: ZenTest 4.11.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ZenTest"
  s.version = "4.11.1"

  s.required_rubygems_version = Gem::Requirement.new(["< 3.0", ">= 1.8"]) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Davis", "Eric Hodel"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDPjCCAiagAwIBAgIBAzANBgkqhkiG9w0BAQUFADBFMRMwEQYDVQQDDApyeWFu\nZC1ydWJ5MRkwFwYKCZImiZPyLGQBGRYJemVuc3BpZGVyMRMwEQYKCZImiZPyLGQB\nGRYDY29tMB4XDTE1MDkxOTIwNTEyMloXDTE2MDkxODIwNTEyMlowRTETMBEGA1UE\nAwwKcnlhbmQtcnVieTEZMBcGCgmSJomT8ixkARkWCXplbnNwaWRlcjETMBEGCgmS\nJomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALda\nb9DCgK+627gPJkB6XfjZ1itoOQvpqH1EXScSaba9/S2VF22VYQbXU1xQXL/WzCkx\ntaCPaLmfYIaFcHHCSY4hYDJijRQkLxPeB3xbOfzfLoBDbjvx5JxgJxUjmGa7xhcT\noOvjtt5P8+GSK9zLzxQP0gVLS/D0FmoE44XuDr3iQkVS2ujU5zZL84mMNqNB1znh\nGiadM9GHRaDiaxuX0cIUBj19T01mVE2iymf9I6bEsiayK/n6QujtyCbTWsAS9Rqt\nqhtV7HJxNKuPj/JFH0D2cswvzznE/a5FOYO68g+YCuFi5L8wZuuM8zzdwjrWHqSV\ngBEfoTEGr7Zii72cx+sCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw\nHQYDVR0OBBYEFEfFe9md/r/tj/Wmwpy+MI8d9k/hMA0GCSqGSIb3DQEBBQUAA4IB\nAQB+Hx8xUgrpZa4P8H8gR8zme5kISwQrG80MbpqJV6/G3/ZicRFhN5sjwu0uHGue\nbd9Cymf6oIRwHVarJux2M32T6bL07Hmi07w2QaPc3MnMKB/D46SRZ2JSSGPFRBTc\nSilobMRoGs/7B15uGFUEnNrCB/ltMqhwwSx1r++UQPfeySHEV9uqu03E5Vb7J37O\n2Er6PLXHRiYsIycD1LkMi6YnixdITRHmrqJYE2rsjaIfpIehiusVAPHkNf7qbpHq\nqx3h45R1CAsObX0SQDIT+rRbQrtKz1GHIZTOFYvEJjUY1XmRTZupD3CJ8Q7sDqSy\nNLq5jm1fq6Y9Uolu3RJbmycf\n-----END CERTIFICATE-----\n"]
  s.date = "2016-06-13"
  s.description = "ZenTest provides 4 different tools: zentest, unit_diff, autotest, and\nmultiruby.\n\nzentest scans your target and unit-test code and writes your missing\ncode based on simple naming rules, enabling XP at a much quicker pace.\nzentest only works with Ruby and Minitest or Test::Unit. There is\nenough evidence to show that this is still proving useful to users, so\nit stays.\n\nunit_diff is a command-line filter to diff expected results from\nactual results and allow you to quickly see exactly what is wrong.\nDo note that minitest 2.2+ provides an enhanced assert_equal obviating\nthe need for unit_diff\n\nautotest is a continous testing facility meant to be used during\ndevelopment. As soon as you save a file, autotest will run the\ncorresponding dependent tests.\n\nmultiruby runs anything you want on multiple versions of ruby. Great\nfor compatibility checking! Use multiruby_setup to manage your\ninstalled versions.\n\n*NOTE:* The next major release of zentest will not include autotest\n(use minitest-autotest instead) and multiruby will use rbenv /\nruby-build for version management."
  s.email = ["ryand-ruby@zenspider.com", "drbrain@segment7.net"]
  s.executables = ["autotest", "multigem", "multiruby", "multiruby_setup", "unit_diff", "zentest"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "articles/how_to_use_zentest.txt", "example.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "articles/how_to_use_zentest.txt", "bin/autotest", "bin/multigem", "bin/multiruby", "bin/multiruby_setup", "bin/unit_diff", "bin/zentest", "example.txt"]
  s.homepage = "https://github.com/seattlerb/zentest"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.txt"]
  s.rubygems_version = "2.4.5"
  s.summary = "ZenTest provides 4 different tools: zentest, unit_diff, autotest, and multiruby"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.15"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.15"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.15"])
  end
end
