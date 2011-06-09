module APITester
	module Core
		module Matchers
			RSpec::Matchers.define :have_status_code do |expected|
				match do |actual|
					actual.code.to_i == expected
				end

				failure_message_for_should do |actual|
					"expected that #{actual.inspect} would have a response code of #{expected}, but it was actually #{actual.code.to_i}."
				end

				description do
					"have an HTTP response code of #{expected}"
				end
			end
		end
	end
end
