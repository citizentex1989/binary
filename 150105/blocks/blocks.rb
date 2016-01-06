def test
   yield "Trombon"
   yield "Aburrido"
   yield "Completo"
   yield "Codea"
   yield "Designing"
   yield "Christian"
   yield "birth"
   yield "three"
   yield "syllable"
end

test {|word| 
  word.downcase!
  if word[0] =~ /([aeiou].*)/
    pigword = word + "way"
  else
    split_word = word.split /([aeiou].*)/
    pigword = "#{split_word[1]}#{split_word[0]}way"
  end
  p pigword
}
