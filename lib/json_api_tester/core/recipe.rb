require 'yaml'

module JSONAPITester
	module Core
		class Recipe

			attr_accessor :name, :request, :response

			def initialize attrs
				attrs.each do |k,v|
					send "#{k}=", v
				end
			end

			def self.all
				raw_recipes.map {|e| new e['recipe'] }
			end

			def self.recipe_book
				@@recipe_book ||= YAML::load(File.read File.join(JSONAPITester::Base.root, 'config', 'recipes.yml'))
			end

			def self.raw_recipes
				@@raw_recipes ||= recipe_book['recipes']
			end

		end
	end
end
