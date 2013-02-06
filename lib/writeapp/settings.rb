require 'yaml'
require 'highline/import'
require 'net/http'
require 'uri'

module Writeapp
	class Settings
		def exists
			# Set up account checking method. Check for settings file in ~/
		end

		def setup
			# Code to setup existing account
		end
	end
end
