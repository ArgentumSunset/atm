class Atm

	attr_reader :users, :adapter
	attr_accessor :users, :adapter

	def initialize(users,adapter)
		@users = users
		@adapter = adapter
	end

	def start()
		print "Welcome to Shithouse Bank's Automatic Teller Machine!\n"
		print "Please input name.\n> "
		name = $stdin.gets.chomp
		print "Please input PIN number.\n> "
		pin = $stdin.gets.chomp
		users.each {|user| 
			if pin.to_i == user.pin && name == user.name
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

		""" 
		print "> "
option = $stdin.gets.chomp.to_i
			if option == 1
				current.deposit
			elsif option == 2
				current.withdraw
			elsif option == 3
				current.quickcash
			elsif option == 4
				print "Goodbye!"
				return
			else
				print "That was not an applicable option. Restarting...\n\n"
				start
			end
	end
end