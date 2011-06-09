require 'ostruct'

module JSONAPITester
	module Core
		class Request

			attr_accessor :method, :path

			def initialize attrs
				attrs.each do |k,v|
					send "#{k}=", v
				end
			end

			def response
				{'status' => 200}
			end

		end
	end
end
