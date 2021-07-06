# frozen_string_literal: true

require_relative "lib/graphql_schema_linter/version"

Gem::Specification.new do |spec|
  spec.name          = "graphql_schema_linter"
  spec.version       = GraphqlSchemaLinter::VERSION
  spec.authors       = ["jhhb"]
  spec.email         = ["admin@admin-c.local"]

  spec.summary       = "GraphQL schema linting and lint rules in Ruby"
  spec.homepage      = "https://github.com/jhhb/graphql_schema_linter"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jhhb/graphql_schema_linter"
  spec.metadata["changelog_uri"] = "https://github.com/jhhb/graphql_schema_linter/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "pry"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
