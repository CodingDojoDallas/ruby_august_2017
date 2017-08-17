Retrieve all players, then write a program that will loop through each player and display their team name, mascot and stadium. How many queries have we done?

players = Player.all
players.each do |player|
puts player.team.mascot.stadium
end




Retrieve all players and write a program to loop through each player and their team name, mascot and stadium using .includes. How many queries have we done now?

players = Player.includes(:team)
players.each do |player|
  puts "Player: #{player.name}, Team: #{player.team.name}, Mascot: #{player.team.mascot}, Stadium: #{player.team.stadium}"
end




Retrieve all players from the 'Chicago Bulls' by using .includes

players = Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)




 Retrieve all players along with the team name that play at the 'Staples Center'

players = Player.joins(:team).where("teams.stadium = 'Staples Center'").select("players.name as player_name, teams.name as team_name, teams.stadium")




 Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes and .joins

Team.joins(:players).where("players.name LIKE 'Z%'").select("teams.name as team_name", "teams.*", "players.*")

players = Team.includes(:players).where("players.name LIKE 'Z%'").references(:players)
