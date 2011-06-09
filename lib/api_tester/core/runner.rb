module APITester
	module Core
		class Runner
			@@tester_path = File.join(APITester::Base.root, 'lib', 'api_tester', 'tests.rb')

			def self.run
				RSpec::Core::Runner.run(['--color', @@tester_path])
			end
		end
	end
end
