require './lib/coins'

input = nil
loop do
  puts "Enter a number of cents:"
  input = gets.chomp
  if (Float(input) rescue false)
    input = input.to_f
    break
  else
    puts "Invalid input"
  end
end
coins = Coins.new(input)
puts coins.output()
