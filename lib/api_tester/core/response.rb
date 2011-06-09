module APITester
	module Core
		class Response

			attr_accessor :status, :body

			def initialize attrs
				attrs.each do |k,v|
					send "#{k}=", v
				end
			end

		end
	end
end
