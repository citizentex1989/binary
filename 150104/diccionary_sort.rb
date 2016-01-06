
def dictionary
  dictionary = []
    
  puts "Escribe una palabra"
  @palabra = gets.chomp

    until @palabra == "" do
      if numeric?(@palabra) == true
        puts "Solo se admiten palabras"
        newword
      else
        dictionary << @palabra
        puts "guardada"
        newword
      end
    end

    dictionary.delete("")
    
    alphabetize(dictionary)
    
end

def newword
  puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
  @palabra = gets.chomp
end

def alphabetize(arr)
  hash_dictionary = {}
  arr.each {|key| hash_dictionary[key] = key.downcase}
  sorted = hash_dictionary.sort_by {|key,value| value}
  puts "Felicidades! Tu diccionario tiene #{arr.length} palabras: "
  sorted.each{|k,v| puts k}
end

def numeric?(num)
    Float(num) != nil rescue false
end

dictionary()