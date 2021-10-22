# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kiba-legacy-cli/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Thibaut Barrère']
  gem.email         = ['thibaut.barrere@gmail.com']
  gem.description   = gem.summary = 'Legacy CLI command for Kiba ETL'
  gem.homepage      = 'https://github.com/thbar/kiba-legacy-cli'
  gem.license       = 'LGPL-3.0'
  gem.files         = `git ls-files | grep -Ev '^(examples)'`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = 'kiba-legacy-cli'
  gem.require_paths = ['lib']
  gem.version       = Kiba::Legacy::CLI::VERSION
  gem.executables   = ['kiba-legacy-cli']
  gem.metadata      = {
    'source_code_uri'   => 'https://github.com/thbar/kiba-legacy-cli',
    'documentation_uri' => 'https://github.com/thbar/kiba-legacy-cli/blob/master/README.md',
  }

  gem.add_dependency 'kiba', '>= 3.0.0', '< 5'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest', '~> 5.9'
  gem.add_development_dependency 'minitest-focus'
end
