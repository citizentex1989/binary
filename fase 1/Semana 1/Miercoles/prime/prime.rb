

def is_prime?(num)
   Math.sqrt(num).floor.downto(2).each {|i| return false if num % i == 0}
   true
end


def collect_prime_numbers(input)
  prime_array = []
  range = (2..input-1)
  range.each do |number| 
    if is_prime?(number)
      prime_array << number 
    end
  end
  prime_array
end

def prime_factors(input)
  prime_array = collect_prime_numbers(input) 
  prime_factors_array = []
  index = 0
  i = 0
    prime_array.each do |prime|
      while i < prime_array.length 
        if input%prime_array[index]==0
           input = input/prime_array[index]
            prime_factors_array << prime_array[index]
            i += 1
        else 
            i += 1
            index += 1
          end
        end
      end
    prime_factors_array
end 


p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]



