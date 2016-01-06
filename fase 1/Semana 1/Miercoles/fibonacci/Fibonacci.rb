 def fibonacci_iterative(n)
  f1 = 1
  f2 = 1 + f1
  fibo=[f1,f2]
  add = n-2 
    add.times do 
      f3 = f1 + f2
      f1 = f2
      f2 = f3
      fibo << f3
    end
  if n < 2 
    n
    else
    n = n-2 
    fibo[n]
  end
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
p fibonacci_iterative(10) == 55 





def fibonacci_recursive(number)
  fibo = []
  if number == 0 
      0
    elsif number == 1
    1
    else 
     (fibonacci_recursive(number-1)) + (fibonacci_recursive(number-2)) 
    end
end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
p fibonacci_recursive(10) == 55 