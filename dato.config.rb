directory "_data/reuniones/" do
  dato.reuniones.each do |reunion|
    create_data_file "#{reunion.titulo.parameterize}.yml", :yaml,
      titulo: reunion.titulo,
      horario: reunion.horario,
      direccion: reunion.direccion,
      contactos: reunion.contactos,
      location: reunion.location,
      afiche: reunion.afiche
  end
end
