require_relative "towers"

p "please input number of discs"
number = gets.chomp.to_i
t = Towers.new(number)
# t.render

while !t.won?
valid_input = false 
    until valid_input
    p "time to move the disc, input a star and ending position respectively, seperated by ','. Please use '0' for the left_most pole,'1' for the middle, '2' for the last pole "
    input = gets.chomp.split(",")
        if input.length == 2 && (input[0]!= input[1]) && input.all?{|ele| ele == '0' || ele == '1'|| ele == '2' }
        valid_input = true
        end 
    end 

t.move(input[0], input[1])
# t.render
end 

puts "Game finished!" if t.won?
