require 'highline'

hl = HighLine.new
friends = hl.ask("Friends?", lambda {|s| s.split(',')})
puts "You're friends with: #{friends.inspect}"

#=> Friends?
Bill, Mirella, Luca
#=> You're friends with: ["Bill", "Mirella", "Luca"]

name = hl.ask("Name?", lamda {|s| s.capitalize})
puts "Hello, #{name}"

#=> Name?
bill
#=> Hello, Bill!
