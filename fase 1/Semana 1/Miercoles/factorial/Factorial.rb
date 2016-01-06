def factorial_iterative(number)
   n=(1..number).inject(1, :*)
   n
end


def factorial_recursive(number)
  if number == 0 
      1
    else 
      (number)*(factorial_recursive(number-1)) 
    end
end









p factorial_iterative(5) == 120
p factorial_iterative(4) == 24
p factorial_iterative(0) == 1
p factorial_iterative(1) == 1
p factorial_iterative(6) == 720


p factorial_recursive(5) == 120
p factorial_recursive(4) == 24
p factorial_recursive(0) == 1
p factorial_recursive(1) == 1
p factorial_recursive(6) == 720

