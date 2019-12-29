# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smarta_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'smarta_api_client'
  spec.version       = SmartaApiClient::VERSION
  spec.authors       = ['smartatransit']
  spec.email         = ['smartatransit@gmail.com']

  spec.summary       = 'A dual client for the MARTA and SMARTA APIs.'
  spec.description   = 'A combination basic client for the MARTA RESTful API and an enhanced,
                          supplemental client for the SMARTA RESTful API.'
  spec.homepage      = 'https://github.com/smartatransit'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/smartatransit/smarta-api-client'
    spec.metadata['changelog_uri'] = 'https://github.com/smartatransit/smarta-api-client/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'codecov', '~> 0.1.16'
  spec.add_development_dependency 'awesome_print', '~> 1.8'
  spec.add_runtime_dependency 'dotenv', '~> 2.7'
  spec.add_runtime_dependency 'rest-client', '~> 2.1'
end
