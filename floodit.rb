# Created with com1001---ruby-assignment.
# User: ljackson-mcketty
# Date: 2016-12-07
# Time: 11:19 AM
# To change this template use Tools | Templates.

def get_board(width, height)
  # TODO: Implement this method
  #
  # This method should return a two-dimensional array.
  # Each element of the array should be one of the
  # following values (These are "symbols", you can use
  # them like constant values):
  # :red
  # :blue
  # :green
  # :yellow
  # :cyan
  # :magenta
  #
  # It is important that this method is used because
  # this will be used for checking the functionality
  # of your implementation.
end

# TODO: Implement everything else as described in the
#       assignment brief.


class FloodIt
  require 'console_splash'
  splash = ConsoleSplash.new()
  splash = ConsoleSplash.new(30, 78)a
  splash.write_header("Flood It", "Lewis Jackson-Mcketty", "0.1",
        {:nameFg=>:red, :authorFg=>:green})
  splash.write_center(-5, "Press Enter to start")
  splash.write_horizontal_pattern("*", {:fg=>:white, :bg=>:green})
  splash.write_vertical_pattern("|")
 
  splash.splash
  puts ""
  puts ""
  print "->"  
  input = gets.chomp
  
  number_games = 0
  best_score = 0
  
  while input != "" do
    puts ""
    print "->"  
    input = gets.chomp
  end
  
  if input == "" then
    puts "  Main menu: "
    puts "  Enter 's' to start game"
    puts "  Enter 'c' to change size of board"
    puts "  Enter 'q' to quit"
    if number_games == 0 then
      puts "  No games played yet"
    else 
      puts "  Best score: #{best_score} turns"
    end
  end
  
  columns = 14
  rows = 9
    
  loop do
    puts ""
    print "->"  
    input = gets.chomp
    if input == "q" then
      "puts quit game ygm"
      break
    elsif input == "s" then
      puts "start of game"
      break
    elsif input == "c"
    print "  How wide do you want the game: "
    width = gets.chomp.to_i
    print "  How high do you want the game: "
    height = gets.chomp.to_i
    columns = width
    rows = height
    puts "  #{columns} x #{rows}"
    break
    end
  end
      
end