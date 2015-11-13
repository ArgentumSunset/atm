class User

	attr_accessor :pin, :name, :balance

	def initialize(name,pin,balance)
		@name = name
		@pin = pin
		@balance = balance
	end
end