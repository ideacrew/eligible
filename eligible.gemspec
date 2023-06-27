# frozen_string_literal: true

require_relative "lib/eligible/version"

Gem::Specification.new do |spec|
  spec.name = "eligible"
  spec.version = Eligible::VERSION
  spec.authors = ["ipublic"]
  spec.email = ["info@ideacrew.com"]

  spec.summary = "Eligibility determinations and workflow"
  spec.description = "Eligibility determinations and workflow"
  spec.homepage = "https://github.com/ideacrew/eligibility.git"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.1")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata["rubygems_mfa_required"] = "true"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ideacrew/eligibility.git"
  spec.metadata["changelog_uri"] = "https://github.com/ideacrew/eligibility.git/CODE_OF_CONDUCT.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "dry-system"
  spec.add_runtime_dependency "durable_rules"
  spec.add_runtime_dependency "globalid"

end
