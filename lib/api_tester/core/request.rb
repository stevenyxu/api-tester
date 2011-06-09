require 'net/http'

module APITester
	module Core
		class Request

			attr_accessor :method, :path

			def self.http
				Net::HTTP.new(Config.host, Config.port).tap do |http|
					http.use_ssl = Config.ssl?
				end
			end

			def initialize attrs
				attrs.each do |k,v|
					send "#{k}=", v
				end
			end

			def get_response
				request = requestor_class.new path
				Request.http.request request
			end

			def response
				@response ||= get_response
			end

		protected

			def requestor_class
				case method
				when 'get', nil
					Net::HTTP::Get
				when 'post'
					Net::HTTP::Post
				when 'put'
					Net::HTTP::Put
				when 'delete'
					Net::HTTP::Delete
				else
					raise "request method `#{method}` not recognized"
				end
			end

		end
	end
end
