require 'json'
require 'pry'
file = File.read('roster.json')
data = JSON.parse(file)

data.keys.each do |team_name|
  puts team_name
end
binding.pry
data.each do |team, players|
  players.each do |position, player|
    puts "#{position}: #{player}"
  end
end
