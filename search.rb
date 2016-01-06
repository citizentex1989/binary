def linear_search(object,array)
  result = nil
    array.each do |number|
      if number == object
        result = array.index(number)
      end
    end
  result
end





def global_linear_search(object,arr)
  result = []
  arr.each_with_index do |letter, index|
    if letter == object
      result << index
    end
  end
  result
end




 random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
 p linear_search(20, random_numbers) == 3

 p linear_search(29, random_numbers) == nil 

arr = "entretenerse".split('')
p global_linear_search("e", arr) == [0, 4, 6, 8, 11]