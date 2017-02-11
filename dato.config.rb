directory "_data/reuniones/" do
  dato.reuniones.each_with_index do |reunion, index|
    create_data_file "#{index}-#{reunion.titulo.parameterize}.yml", :yaml,
      titulo: reunion.titulo,
      horario: reunion.horario,
      direccion: reunion.direccion,
      contactos: reunion.contactos,
      location: reunion.location,
      afiche: reunion.afiche
  end
end
