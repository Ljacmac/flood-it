# Created with com1001---ruby-assignment.
# User: ljackson-mcketty
# Date: 2016-12-07
# Time: 11:19 AM
# To change this template use Tools | Templates.

def get_board(width, height)
  spaces = Array.new(width, "  ")
  table = Array.new(height, spaces)
  i=0
  while i<table.length do
    j=0
    while j<spaces.length do
      color = rand(1..6)
      if color == 1 then
        print table[i][j].colorize( :background => :red)
      elsif color == 2 then
        print table[i][j].colorize( :background => :blue)
      elsif color == 3 then
        print table[i][j].colorize( :background => :green)
      elsif color == 4 then
        print table[i][j].colorize( :background => :cyan)
      elsif color == 5 then
        print table[i][j].colorize( :background => :yellow)
      else
        print table[i][j].colorize( :background => :magenta)
      end
      j+=1
    end
    puts ""
    i+=1
  end     
end

def main_menu(width, height)
  columns = width
  rows = height
  puts "  Main menu: "
    puts "  Enter 's' to start game"
    puts "  Enter 'c' to change size of board"
    puts "  Enter 'q' to quit"
    puts "  Size of board= #{width} x #{height}"
    loop do
      puts ""
      print "->"  
      input = gets.chomp
      if input == "q" then
        exit
      elsif input == "s" then
        get_board(columns, rows)
      elsif input == "c"
        print "  How wide do you want the game: "
        columns = gets.chomp.to_i
        print "  How high do you want the game: "
        rows = gets.chomp.to_i
        puts ""
        main_menu(columns, rows)
    end
  end       
end
    
    
require 'console_splash'
splash = ConsoleSplash.new()
splash = ConsoleSplash.new(30, 78)
splash.write_header("Flood It", "Lewis Jackson-Mcketty", "0.1",
  {:nameFg=>:red, :authorFg=>:green})
splash.write_center(-5, "Press Enter to start")
splash.write_horizontal_pattern("*", {:fg=>:white, :bg=>:green})
splash.write_vertical_pattern("|")
  
number_games = 0
best_score = 0
columns = 14
rows = 9
  
splash.splash
puts ""
ts ""
  print "->"  
input = gets.chomp
  
while input != "" do
  puts ""
  print "->"  
  input = gets.chomp
end
  
main_menu(columns, rows)

  

    
      