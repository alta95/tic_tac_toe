arr = ["",1,2,3,4,5,6,7,8,9]
winStatus = false
player = "P1"
winSymbol = "○"
round = 0

define_method :board do
  puts "==================="
  puts "-------------"
  puts "| #{arr[1]} | #{arr[2]} | #{arr[3]} |"
  puts "-------------"
  puts "| #{arr[4]} | #{arr[5]} | #{arr[6]} |"
  puts "-------------"
  puts "| #{arr[7]} | #{arr[8]} | #{arr[9]} |"
  puts "-------------"
end

puts board
puts 'Welcome to Tic-Tac-Toe'
puts 'Press 1-9 to make your choice'

  
define_method :winCheck do
  if arr[1] == winSymbol && arr[2] == winSymbol && arr[3] == winSymbol
    puts "#{player} Win![123]"
    winStatus = true
  elsif arr[4] == winSymbol  && arr[5] == winSymbol  && arr[6] == winSymbol 
    puts "#{player} Win![456]"
    winStatus = true
  elsif arr[7] == winSymbol  && arr[8] == winSymbol  && arr[9] == winSymbol 
    puts "#{player} Win![789]"
    winStatus = true
  elsif arr[1] == winSymbol  && arr[4] == winSymbol  && arr[7] == winSymbol 
    puts "#{player} Win![147]"
    winStatus = true
  elsif arr[2] == winSymbol  && arr[5] == winSymbol  && arr[8] == winSymbol 
    puts "#{player} Win![258]"
    winStatus = true
  elsif arr[3] == winSymbol  && arr[6] == winSymbol  && arr[9] == winSymbol 
    puts "#{player} Win![369]"
    winStatus = true
  elsif arr[1] == winSymbol  && arr[5] == winSymbol  && arr[9] == winSymbol 
    puts "#{player} Win![159]"
    winStatus = true
  elsif arr[3] == winSymbol  && arr[5] == winSymbol  && arr[7] == winSymbol 
    puts "#{player} Win![357]"
    winStatus = true
  end
end

while winStatus == false
  puts "#{player} turn. Symbol: [#{winSymbol}]"
  input = gets.chomp.to_i
  if round >= 8
    puts "Draw"
    break
  elsif arr.include?(input)
    arr[input] = winSymbol
    puts board
    winCheck
    player == "P1" ? player = "P2" : player = "P1"
    winSymbol == "○" ? winSymbol = "x" : winSymbol = "○"
    round+= 1
  else
    puts "please enter correct input"
  end
end









