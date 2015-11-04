require_relative "adapter"

class ConsoleAdapter < Adapter

	attr_accessor :is_testing

	def initialize(is_testing)
		super(is_testing)
	end

	def show_window
		
	end
end