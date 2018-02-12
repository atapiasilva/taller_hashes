

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos_nuevos = productos.to_a


productos['cereal'] = 2000
productos['bebida'] = 2000
productos.delete('galletas')

puts productos_nuevos