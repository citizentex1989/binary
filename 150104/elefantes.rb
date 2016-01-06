def elefantes
  print "Introduce el número de elefantes: "
  num = gets.chomp

  texto = " elefantes se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar otro elefante"

  puts "1 elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar otro elefante"
  for i in 2..num.to_i
    puts i.to_s + texto
  end
  puts "...y se rompió la telaraña!"
end

elefantes