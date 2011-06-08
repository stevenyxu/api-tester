require 'rspec'
require 'rake'

require 'json_api_tester/core'

module JSONAPITester
	class Base
		def self.root
			File.expand_path(File.join File.dirname(__FILE__), '..')
		end
	end
end
