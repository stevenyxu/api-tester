module JSONAPITester
	module Core
		class Runner
			# Run the specs found in 'lib/json_api_tester/spec/**/*_spec.rb'
			def self.run(spec_prefix = nil)
				spec_prefix ||= File.join(File.dirname(__FILE__), '..', 'spec')
				$: << File.expand_path(spec_prefix)
				
				RSpec::Core::Runner.run(['--color'] + FileList.new(File.join spec_prefix, '**', '*_spec.rb'))
			end
		end
	end
end
