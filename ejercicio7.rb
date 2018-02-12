
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opciones = 0

while opciones != 7
	puts 'Menu'
	puts ''
	puts '1 . Ingresar'
	puts '2 . eliminar'
	puts '3 . actualizar'
	puts '4 . stock total'
	puts '5 . material con mayor stock'
	puts '6 . consultar producto'
	puts '7 . salir'

puts ''
puts 'Ingresa una opción'
opciones = gets.chomp.to_i	

	case opciones
		when 1
			puts 'opcion 1 - ingrese un elemento (ejemplo: celular,100'   #imprime opcion 1
			r = gets.chomp #obtiene, elimina salto de linea string por teclado y lo guarda en r
			array = r.split(',')  #divide el string según el argumento que está entre parentesis y lo guarda en array
			inventario[array[0].to_sym] = array[1].to_i #guarda el inventario
			puts inventario #imprime elinventario
			#inventario[r.split(',')[0].to_sym] = r.split(',')[1].to_i , forma corta
		when 2
			puts ' opcion 2 - eliminar un item'
			puts inventario
			puts "ingrese elemento a eliminar"
			eliminar = gets.chomp.to_sym
			inventario.delete(eliminar)
			puts inventario
		when 3
			puts ' opcion 3 - actualizar'
			item = gets.chomp.to_sym  #celular/n
			nuevo_valor = gets.chomp.to_i
			inventario[item] = nuevo_valor
			puts inventario

		when 4
			puts ' opcion 4 - visualizar stock total'
			acumulador = 0
			inventario.each do |key, value| #recorre el inventario, recibe claves y valores
				acumulador = acumulador + value
			end
			puts "El stock total es de #{acumulador}"

		when 5
			puts ' opcion 5 - seleccionar item con mayor cantidad de stock'
			mayor = 0
			inventario.each do |key, value|
				mayor = value if valor > mayor
			end

		when 6
			puts ' opcion 6 - buscar un producto'
			clave_buscada = gets.chomp.to_sym
			encontrada = false
			inventario.each do |key, value|
				encontrada = true if key == clave_buscada
			end
			puts encontrada
			
		when 7
			puts 'Ha elegido salir'
		else
			puts 'opcion invalida'
	end	
end



