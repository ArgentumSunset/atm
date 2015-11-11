class User

	attr_reader :pin, :name, :balance
	attr_accessor :pin, :name, :balance

	def initialize(name,pin,balance,atm)
		@name = name
		@pin = pin
		@balance = balance
		@atm = atm
	end

	def change_balance(transaction)
		print "How much would you like to #{transaction}?\n> $"
		amount = $stdin.gets.chomp
		if transaction == "deposit"
			@balance += amount.to_i
			word = "deposited" 
		else 
			@balance -= amount.to_i
		 	word = "withdrawn"
		 end
		print "You have #{word} $#{amount}.\nYour new balance is $#{@balance}."
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
			option = $stdin.gets.chomp
			if option.to_i == 1
				take_cash(100)
			elsif option.to_i == 2
				take_cash(50)
			elsif option.to_i == 3
				take_cash(20)
			elsif option.to_i == 4
				take_cash(10)
			end
		end


		private

		def take_cash(amount)
			@balance -= amount
			print "You have taken #{amount} dollars from your account.\nYour new balance is #{@balance}."
			go_back
		end

		def go_back
			print "\nWould you like to go back to the main menu?\n> "
			back = $stdin.gets.chomp
			back.downcase == "no" ? return : @atm.options(self)
		end
end