# players = Player.all

# players.each do |player|
#     puts player.team.name
#     puts player.team.mascot
#     puts player.team.stadium
# end

# players = Player.includes(:team)

# players.each do |player|
#     puts player.team.name
#     puts player.team.mascot
#     puts player.team.stadium
# end

# players = Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)
# players.each do |player|
#     puts "#{player.name}, #{player.team.name}"
# end

# players = Player.joins(:team).where("teams.stadium = 'Staples Center'")
# players.each do |player|
#     puts "#{player.name}, #{player.team.name}"
# end

Team.joins(:players).where('players.name like "Z%"')
Team.includes(:players).where('players.name like "Z%"').references(:players)
