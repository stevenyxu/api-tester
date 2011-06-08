module JSONAPITester
	module Core
		class Runner
			# Run the specs found in 'lib/json_api_tester/spec/**/*_spec.rb'
			def self.run(specs = nil)
				specs ||= File.join(File.dirname(__FILE__), '..', 'spec', '**', '*_spec.rb')
				RSpec::Core::Runner.run(['--color'] + FileList.new(specs))
			end
		end
	end
end
