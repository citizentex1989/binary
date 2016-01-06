# El código siguiente arroja un error y tienes que corregirlo. 
calificaciones = [8,7,6,7,10]

def cuantos_puntos_faltaron_para_la_perfección(array)
	faltantes = Array.new
	array.each do |num|
		 faltante = 10 - num
		 faltantes << faltante
    end  
	resultado = "Faltaron #{faltantes.inject(:+)} puntos" 
end

puts cuantos_puntos_faltaron_para_la_perfección(calificaciones)

# El código siguiente arroja un error y tienes que corregirlo. 
# En la definición de variables existe un error tienes que corregirlo.
calificaciones = [8,9,6,7,10]
edad = 34
nombre = "fernando" 

def promedio_del_alumno(calificaciones, edad, nombre)
	promedio = calificaciones.inject(:+) / calificaciones.length
	resultado = "#{nombre} de #{edad} años tiene un promedio de #{promedio} "
end

puts promedio_del_alumno(calificaciones, edad, nombre)


# El código siguiente arroja un error y tienes que corregirlo. 
# Modifica únicamente la primera linea. 

def mezclar1(numbers)
  numbers.shuffle 
end

shuffled_array = mezclar1([1,2,3,4,5])
puts shuffled_array.to_s

# El código siguiente arroja un error y tienes que corregirlo. 
# Modifica únicamente la primera linea. 
# Sabes para que sirve el asterisco que se encuentra en el argumento? si no investiga para que funciona 


def mezclar2(*numbers)
  numbers.shuffle
end

p shuffled_array = mezclar2([6,7,8,9,0],4,[5,2,9,10])

