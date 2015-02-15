# For this program we are going to make a class to pick the first player for games
# We are going to make a class, and in this class have two different random generators
# One for the lazy that just picks a random number based on how many people
# Another one that accepts an array of names and generates who is the first player

class First_player

  def start
  	puts "Would you like to enter players names? (yes or no)"
  	question = gets.chomp  	
	if question.downcase == "yes" or question.downcase == "y"
	  puts "Please enter everyone's first name." 
	  puts "Enter them all on one line with a space between each name, then hit enter."
	  @player_names = gets.chomp
	  puts "The first player is #{random_name}."
	elsif question.downcase == "no" or question.downcase == "n"
	  puts "Count the number of players, and assign each player a number."
	  puts "How many players are there?"
	  @player_num = gets.chomp
	  puts "The first player is number #{random_number}."
	else
	  raise ArgumentError.new ("Need to enter yes or no.")  
	end	
  end	

  def random_name
  	name_array = @player_names.split(" ")
    return name_array.sample
  end

  def random_number
    return rand(1..@player_num.to_i)
  end	
end


# Driver Test Code

test_1 = First_player.new
test_1.start
