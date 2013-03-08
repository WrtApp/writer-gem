require 'yaml'
require 'highline/import'
require 'net/http'
require 'uri'

module Writeapp
	class Settings
		def account_exists
			# Set up account checking method. Check for settings file in ~/
		end

		def connect_account (username, password)
			file = File.expand_path('.writeapp', '~')
			File.open(file, 'w') do |f|
				f.puts "username: #{username}\npassword:#{password}"
			end
			puts "Username and password saved. If you need to change these in the future just run `writeapp --setup`"
		end

		def load_account
			account_file = File.expand_path('.writeapp', '~')
			account = YAML.load_file(account_file)
			return account
		end
	end
end
