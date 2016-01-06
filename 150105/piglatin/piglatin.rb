def piglatin(word)
  word.downcase!
  if word[0] =~ /([aeiou].*)/
    pigword = word + "way"
  else
    split_word = word.split /([aeiou].*)/
    pigword = "#{split_word[1]}#{split_word[0]}way"
  end
  pigword
end

def piglatin_phrase(text)
  pig_phrase = []
  words = text.split(" ")
  words.each do |word|
    pig_word = piglatin(word)
    pig_phrase << pig_word
  end
  pig_phrase.join(" ")
end

p piglatin("Platon") == "atonplway"
p piglatin("Arreola") == "arreolaway"
p piglatin("Clanes") == "anesclway"
p piglatin_phrase("Este es un texto y sera convertido a piglatin por este programa") == "esteway esway unway extotway yway erasway onvertidocway away iglatinpway orpway esteway ogramaprway"
p piglatin_phrase("Convirtiendo a piglatin esta oracion") == "onvirtiendocway away iglatinpway estaway oracionway"
p piglatin_phrase("Este programa funciona de manera correcta") == "esteway ogramaprway uncionafway edway aneramway orrectacway"