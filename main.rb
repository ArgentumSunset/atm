require "gosu"
require_relative "user"
require_relative "atm"
require_relative "adapter"

users = []

is_testing = ARGV.first

if is_testing
	adapter = Adapter.new
else
	adapter = Adapter.new
	adapter.show_window
end

data = File.read('users.txt')
lines = data.split("\n")
lines.each{|line| 
	line = line.split(',')
	users.push(User.new(line[0], line[1].to_i, line[2].to_i)) # name, pin, balance
}

atm = Atm.new(users,adapter)
