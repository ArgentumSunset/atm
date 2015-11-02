class User

	attr_reader :pin, :name, :balance
	attr_accessor :pin, :name, :balance

	def initialize(name,pin,balance)
		@name = name
		@pin = pin
		@balance = balance
	end

	def deposit
	end

	def withdraw
	end

	def quickcash
	end
end