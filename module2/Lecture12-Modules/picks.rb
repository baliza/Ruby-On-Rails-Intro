require_relative 'player'
require_relative 'team'
players=[Player.new("Edu", 14, 20)]
players[1] = Player.new("Bob", 13, 5); players[2] = Player.new("Jim", 15, 4.5) 
players[3] = Player.new("Mike", 21, 5) ; players[4] = Player.new("Joe", 14, 5) 
players[5] = Player.new("Scott", 16, 3)

red_team = Team.new("Red") 
red_team.add_players(*players) # (splat) 
puts red_team 
puts 'here'
# select only players between 14 and 20 and reject any player below 4.5 skill-level
elig_players = red_team.select {|player| (14..20) === player.age } 
                       .reject {|player| player.skill_level < 4.5} 
puts elig_players # => <Jim: 4.5(SL), 15(AGE)>
				  # => <Joe: 5(SL), 14(AGE)>


