 
 def to_roman(num)
  #puts "Introduce tu número"
  #num = gets.chomp
  romans(num.to_i)
end

def romans(num)
  letters = {"M" => 1000,"D" => 500,"C"=> 100,"L"=> 50,"X"=> 10,"V"=> 5,"I"=> 1}
  letters.each do |k,v|
    letters[k] = num/v
    num = num%v
  end
  convertion(letters) 
end

def convertion(hash)
  roman = [] 
  hash.each do |k,v| 
    roman << (k * v)
  end
  text = roman.join
  exceptions(text)
end

def exceptions (text)
  text.gsub!("VIIII","IX")
  text.gsub!("IIII","IV")
  text.gsub!("LXXXX","XC")
  text.gsub!("XXXX","XL")
  text.gsub!("DCCCC","CM")
  text.gsub!("CCCC","CD")
  text
end


a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid    |input | expected | actual"
puts "|---------|------|----------|-------"
puts "| #{a}    |1     | I        | #{to_roman(1)}"
puts "| #{b}    |3     | III      | #{to_roman(3)}"
puts "| #{c}    |4     | IV       | #{to_roman(4)}"
puts "| #{d}    |9     | IX       | #{to_roman(9)}"
puts "| #{e}    |13    | XIII     | #{to_roman(13)}"
puts "| #{f}    |14    | XIV      | #{to_roman(14)}"
puts "| #{g}    |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h}    |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i}    |1646  | MDCXLVI  | #{to_roman(1646)}" 

