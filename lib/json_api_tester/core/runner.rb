module JSONAPITester
	module Core
		class Runner
			@@tester_path = File.join(JSONAPITester::Base.root, 'lib', 'json_api_tester', 'tests.rb')

			# Run the specs found in 'lib/json_api_tester/spec/**/*_spec.rb'
			def self.run
				RSpec::Core::Runner.run(['--color', @@tester_path])
			end
		end
	end
end
