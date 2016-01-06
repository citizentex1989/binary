
range = (1..100).to_a
p range
middle =(range[0]+range[-1])/(2)
p middle
range = range.reject! {|x| x > middle}
p range
middle = (range[0]+range[-1])/(2)
p middle