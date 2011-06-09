module JSONAPITester
	module Core
		class Runner
			@@tester_path = File.join(JSONAPITester::Base.root, 'lib', 'json_api_tester', 'tests.rb')

			def self.run
				RSpec::Core::Runner.run(['--color', @@tester_path])
			end
		end
	end
end
