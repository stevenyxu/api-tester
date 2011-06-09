require 'yaml'

module JSONAPITester
	module Core
		class Config

			@@config_file_path = File.join(Base.root, 'config', 'config.yml')
			@@values = YAML::load(File.read @@config_file_path)

			def self.host
				@@values['host']
			end

			def self.port
				@@values['port']
			end

			def self.ssl?
				true == @@values['ssl']
			end

		end
	end
end
