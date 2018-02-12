h = {"x": 1, "y":2}

h[:z] = 3
h[:x] = 5
h.delete("y")

puts 'yeaah' if h.keys.include?(:z)

array_nuevo = h.invert

print array_nuevo