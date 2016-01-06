def canonical(word)
 word.downcase.gsub(/[^a-z]/,'').split("").sort

end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(word,lots_of_words)
anagrams = []
lots_of_words = lots_of_words.split(" ")
lots_of_words.each do |each_word|
  if are_anagrams?(word,each_word) == true
    anagrams << each_word
  end
end
anagrams
end


p canonical("Debit card")
p canonical("Bad credit")


p are_anagrams?("Andres","samba")
p are_anagrams?("Debit card","Bad credit")

p anagrams_for("amor","En roma puedes encontrar un ramo de rosas y darselas a Omar") == ["roma", "ramo", "Omar"]
