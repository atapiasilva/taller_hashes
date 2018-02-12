restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
caro = 0
barato = 0
suma = 0
restaurant_menu.each do |key, value|
 	caro = value if caro <= value 
	barato = value if barato >= value || barato == 0 
	suma += value 
end



puts suma / restaurant_menu.length  #suma todos los valores y divide por la cantidad de elementos que tiene el restaurant_menu