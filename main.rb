require_relative "user"
require_relative "atm"

users = []
atm = Atm.new(users)

users.push(User.new("Jeff", 2048, 2581))
users.push(User.new("Amy", 8118, 8384))

atm.start