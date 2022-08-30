# frozen_string_literal: true

require_relative "lib/teneo/parameter/version"

Gem::Specification.new do |spec|
  spec.name = "teneo-parameter"
  spec.version = Teneo::Parameter::VERSION
  spec.authors = ["Kris Dekeyser"]
  spec.email = ["kris.dekeyser@libis.be"]

  spec.summary = "Teneo Parameter support library"
  spec.description = "Adds inheritable and type-safe parameters to any class"
  spec.homepage = "https://github.com/LIBIS/teneo-parameter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "concurrent-ruby"
end
