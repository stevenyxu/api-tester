require 'rspec'
require 'rake'

specs = File.join File.dirname(__FILE__), 'spec', '**', '*_spec.rb'

RSpec::Core::Runner.run(['--color'] + FileList.new(specs))
