require 'rspec'
require 'rake'

module JSONAPITester
	class Base
		def self.root
			File.expand_path(File.join File.dirname(__FILE__), '..')
		end
	end
end

$: << File.join(JSONAPITester::Base.root, 'lib')

require 'json_api_tester/core'
