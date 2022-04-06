ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

# Crear un programa llamado busqueda.rb que pueda buscar a que mes pertenece una o más
# cifras específicas. En caso de no encontrarlo mostrar el mensaje "no encontrado".

# ruby busqueda.rb 15000 31000 27000  => ARGV

search_data = ARGV.map do |element|
    element.to_i
end

# # 15000 31000 27000  =>
# # enero, no encontrado, no encontrado

# sales_inverted = ventas.invert
# # con esto el valor pasa a ser la llave y el mes será el valor
# search_data.each do |sale|
# # sales_inverted.each do |key, value|
# #     # evualuar si la llave sale existe o es nil
# #     # si existe debe devolver el valor de la llave
#     if sales_inverted[sale]
#         puts sales_inverted[sale]
#     else
# #     # osea que si es nulo debe imprimir no encontrado
#         puts "no encontrado"
#     end
# end

# #     sales_inverted.select do |key, value|

# #     end
# # end
founded = false

search_data.each do |sale|
    ventas.each do |key, value|
        if sale == value
            puts key
            founded = true
        end
    end
    if founded == false
        puts "no encontrado"
    end
    founded = false
end