meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

nuevo_array = meses.zip(ventas)
h = nuevo_array.to_h 
hash_nuevo = h.invert
mayor = 0
hash_nuevo.each {|key, value| mayor=key if mayor <= key}

puts mayor


