def binary_search
  range = (1..100).to_a
  middle =(range[0]+range[-1])/(2)
  i = 1
  puts "Hey, let's play a game. Think of a number from 1 to 100. Type ready when you want to begin."
  ready = gets.chomp 
    while ready != "ready"
      puts "type ready if you are ready"
      ready = gets.chomp
    end
    answer = " "
    while answer != "y"
      puts "Is it #{middle}? type y for yes, h if the number is higher and l if the number is lower."
      answer = gets.chomp
        case answer
          when "h"
          range = range.reject! {|x| x < middle}
          middle = (range[0]+range[-1])/(2)
          i += 1
          when "l"
          range = range.reject! {|x| x > middle}
          middle = (range[0]+range[-1])/(2)
          i += 1 
          when "y"
          else 
          puts "please use y, l or h."
        end
    end   
    puts "Awesome! it only took #{i} tries."
  end

binary_search

