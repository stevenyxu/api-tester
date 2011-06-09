require 'yaml'

module APITester
	module Core
		class Recipe

			attr_accessor :name, :request, :response

			def initialize attrs
				attrs.each do |k,v|
					send "#{k}=", v
				end
			end

			def response= hash
				@response = Response.new hash
			end

			def request= hash
				@request = Request.new hash
			end

			def self.all
				raw_recipes.map {|e| new e['recipe'] }
			end

			def self.recipe_book
				@@recipe_book ||= YAML::load(File.read File.join(APITester::Base.root, 'config', 'recipes.yml'))
			end

			def self.raw_recipes
				@@raw_recipes ||= recipe_book['recipes']
			end

		end
	end
end
