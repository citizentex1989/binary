def deaf_grandma

  # Variable definition
  puts "hola"
  @option = ""
  @despedida = 0

  # main loop
  while @option != "salida" do
    answer = gets.chomp
    undestand(answer)
    grandma_response
  end
    
end
  
# understand input
def undestand(answer)
  if answer == "BYE TQM"
      @despedida += 1
      if @despedida == 3
        @option = "salida"
        puts "bueno, adios"
      else
         @option = "mayuscula" 
      end
    elsif answer == answer.upcase
      @option = "mayuscula"
    else
      @option = "minuscula"
    end
end

# generate response
def grandma_response
    case @option
      when "minuscula"
        puts "HUH?! NO TE ESCUCHO, HIJO!"
      when "mayuscula"
        puts "NO, NO DESDE 1983"
    end
end

deaf_grandma




