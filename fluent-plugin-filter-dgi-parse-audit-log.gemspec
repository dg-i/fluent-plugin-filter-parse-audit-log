lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent_plugin_filter_parse_audit_log/version'

Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-filter-dgi-parse-audit-log'
  spec.version       = FluentPluginFilterParseAuditLog::VERSION
  spec.authors       = ['winebarrel', 'aeber']
  spec.email         = ['']

  spec.summary       = %q{Fluentd Filter Plugin to parse linux's audit log.}
  spec.description   = %q{Fluentd Filter Plugin to parse linux's audit log.}
  spec.homepage      = 'https://github.com/dg-i/fluent-plugin-filter-parse-audit-log'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'fluentd'
  spec.add_dependency 'dgi_audit_log_parser', '>= 1.0.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'test-unit', '>= 3.1.0'
  spec.add_development_dependency 'appraisal', '>= 2.2'
end
