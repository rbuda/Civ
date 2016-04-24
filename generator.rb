	# $civs = ['America','Arabia','Assyria','Austria','Aztec','Babylon','Brazil','Byzantium','Carthage','Celts','China','Denmark','Egypt','England','Ethiopia','France','Germany','Greece','Huns','Inca','India','Indonesia','Iroquois','Japan','Korea','Maya','Mongolia','Morocco','Netherlands','Ottomans','Persia','Poland','Polynesia','Portugal','Rome','Russia','Shoeshone','Siam','Songhai','Spain','Sweden','Venice','Zulu']

# maps = {  1 => 'pangea', 
# 			  	2 => 'pangea plus' ,
# 					3 => 'continents plus', 
# 					4 => 'continents', 
# 					5 => 'highlands' }


def total_users
	users(number_of_players = gets.chomp.to_i)
end

# Gather User Names
def users(number_of_players)
	@users = []
	counter = 1
	until counter > number_of_players do
		puts "User #{counter} Name:"
		name = gets.chomp
		@users.push(name)
		counter += 1
	end
	users_order(@users_
end

def users_order(users_list)
	users_list.shuffle!


# # puts civs.sample(3)

