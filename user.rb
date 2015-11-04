class User

	attr_reader :pin, :name, :balance
	attr_accessor :pin, :name, :balance

	def initialize(name,pin,balance)
		@name = name
		@pin = pin
		@balance = balance
	end

	def deposit(amount)
		balance += amount
		confirm_message = "You have deposited #{amount}.\nYour new balance is $#{balance}.\nIs this wrong?"
		confirm
	end

	def withdraw
	end

	def quickcash
	end

	def confirm
		
	end
end