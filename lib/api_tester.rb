require 'rspec'
require 'rake'

module APITester
	class Base
		def self.root
			File.expand_path(File.join File.dirname(__FILE__), '..')
		end
	end
end

$: << File.join(APITester::Base.root, 'lib')

require 'api_tester/core'
