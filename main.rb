require "gosu"
require_relative "user"
require_relative "atm"
require_relative "window"
require_relative "cursor"

users = []
is_testing = ARGV.first
atm = Atm.new(users,is_testing)

if !is_testing
	window = Window.new(atm)
	window.show
end

data = File.read('users.txt')
lines = data.split("\n")
lines.each{|line| 
	line = line.split(',')
	users.push(User.new(line[0], line[1].to_i, line[2].to_i,atm)) # name, pin, balance
}

atm.start
