civs = ['America','Arabia','Assyria','Austria','Aztec','Babylon','Brazil','Byzantium','Carthage','Celts','China','Denmark','Egypt','England','Ethiopia','France','Germany','Greece','Huns','Inca','India','Indonesia','Iroquois','Japan','Korea','Maya','Mongolia','Morocco','Netherlands','Ottomans','Persia','Poland','Polynesia','Portugal','Rome','Russia','Shoeshone','Siam','Songhai','Spain','Sweden','Venice','Zulu']

$maps = ['pangea', 'pangea plus' ,'continents plus', 'continents', 'highlands']

# Gather User Names
def users
	@users_array = []
	counter = 0
	user_number = 1
	while counter < @number_of_players do
		puts "User #{user_number} Name:"
		name = gets.chomp
		puts
		@users_array.push(name)
		counter += 1
		user_number += 1
	end
end

# Change Maps
def terrain(answer)
	answer.capitalize!
	if answer == "N"
		puts 'Moving on then...'
	elsif answer == "Y"
		elim_maps
	else 
		puts 'Either put y or n ya dope!'
	end
end
def elim_maps
	puts 'Which ones?'
	if answer2 = gets.chomp.downcase.to_s
		$maps.delete(answer2)		
	else 	
	end
end

def dots
	puts '...................'
end

# User Prompt:
puts 'How many people are playing?'
@number_of_players = gets.chomp.to_i
puts
	if @number_of_players < 4
		puts 'Ha! You have no friends!'
	else
		puts 'Wow popular today!'
	end
puts
sleep 1.25 

users
puts 'Calculating Order From First To Last...'
puts
sleep 1.25
puts 'Here is your order:'
puts @users_array.shuffle!
puts
sleep 1.25

puts 'Let\'s look at our potential maps...'
sleep 0.5
dots
puts 'Maps List:'
puts $maps
dots
puts

puts 'Any maps you don\'t like? (y or n)'
answer = gets.chomp
puts
terrain(answer)
puts
dots
sleep 0.5
puts 'Revised Maps List:'
puts $maps
dots
puts
@random_map = $maps.sample
puts 'You drew ' + @random_map + '!'
puts

# puts 'What civs DON\'T you want to be?'

# puts civs.sample(3)

# puts '.................'

# puts maps.shuffle.first
