class Atm

	attr_reader :users, :index
	attr_accessor :users, :index

	def initialize(users)
		@users = users
		@index = 0
	end

	def start
		print "Welcome to Shithouse Bank's Automatic Teller Machine!\n"
		print "Please input PIN number.\n> "
		input = $stdin.gets.chomp
		users.each {|user| 
			if input.to_i == user.pin
				operate(user)
		end
		}
	end

	def operate(current)
		print "Glad to see you, #{current.name}! How are you today?\n> "
			condition = $stdin.gets.chomp
			puts """
I am glad to see you are #{condition} today!
You have #{current.balance} in your account.
What would you like to do today?
		1: Deposit
		2: Withdraw
		3: Quick Cash
		4: Exit

> 
			"""
			option = $stdin.gets.chomp.to_i
			if option == 1
				current.deposit
			elsif option == 2
				current.withdraw
			elsif option == 3
				current.quickcash
			elsif option == 4
				print "Goodbye!"
			else
				print "'#{option}' was not an applicable option. Restarting...\n\n"
				start
			end
	end
end