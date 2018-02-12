



personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
 nuevo_array = personas.zip(edades)
nuevohash = nuevo_array.to_h
print nuevohash

total = nuevohash.inject(0) { |sum, (key, valor)|  sum + valor }
promedio = total / nuevohash.length
puts promedio
