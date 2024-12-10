# frozen_string_literal: true

require_relative "lib/bartask/version"

Gem::Specification.new do |spec|
  spec.name = "bartask"
  spec.version = Bartask::VERSION
  spec.authors = ["Yuji Yaginuma"]
  spec.email = ["yuuji.yaginuma@gmail.com"]

  spec.summary = "Backup and Recovery tool for RDBMS of Rails development."
  spec.homepage = "https://github.com/y-yagi/bartask"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github Gemfile compose.yml])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
end