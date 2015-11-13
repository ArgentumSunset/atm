class Atm

	attr_accessor :users, :current

	def initialize(users,is_testing)
		@users = users
		is_testing ? @is_testing = true : @is_testing = false
	end

	def start
		print "Welcome to Craphouse Bank's Automatic Teller Machine!\n"
		print "Please input name.\n> "
		name = $stdin.gets.chomp
		print "Please input PIN number.\n> "
		pin = $stdin.gets.chomp
		users.each {|user| 
			if pin.to_i == user.pin && name == user.name
				@current = user
				operate
			end
		}
	end

	def operate
		print "Glad to see you, #{current.name}! How are you today?\n> "
			condition = $stdin.gets.chomp
			puts "I am glad to see you are #{condition.downcase} today!"
			options
		end

		def options
			puts """
	You have $#{current.balance} in your account.
	What would you like to do today?
		1: Deposit
		2: Withdraw
		3: Quick Cash
		4: Exit

		""" 
		print "> "
			option = $stdin.gets.chomp.to_i
			if option == 1
				change_balance("deposit")
			elsif option == 2
				change_balance("withdraw") 
			elsif option == 3
				quickcash
			elsif option == 4
				print "Goodbye!"
				Kernel.exit(false)
			else
				print "That was not an applicable option. Restarting ATM...\n\n"
				start
			end
		end


		def change_balance(transaction)
				print "How much would you like to #{transaction}?\n> $"
				amount = $stdin.gets.chomp.to_i
			if transaction == "deposit"
				current.balance += amount
				word = "deposited" 
			else 
				current.balance -= amount
			 	word = "withdrawn"
			end
			print "You have #{word} $#{amount}.\nYour new balance is $#{current.balance}."
			go_back
		end

		def quickcash
			print "What amount would you like to withdraw?"
			puts """
					1: $100
					2: $50
					3: $20
					4: $10
					"""
			print "> "

			case $stdin.gets.chomp.to_i
				when 1
					take_cash(100)
				when 2
					take_cash(50)
				when 3
					take_cash(20)
				when 4
					take_cash(10)
				else
					print "Not a valid option. Restarting ATM..."
					start
			end
			go_back
		end


		private

		def take_cash(amount)
			current.balance -= amount
			print "You have taken #{amount} dollars from your account.\nYour new balance is $#{current.balance}."
			go_back
		end

		def go_back
			print "\nWould you like to go back to the main menu?\n> "
			back = $stdin.gets.chomp
			back.downcase == "no" ? return : options
		end
end