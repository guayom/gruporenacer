directory "_data/reuniones/" do
  dato.reuniones.each_with_index do |reunion, index|
    create_data_file "#{index}-#{reunion.titulo.parameterize}.yml", :yaml,
      titulo: reunion.titulo,
      horario: reunion.horario,
      direccion: reunion.direccion,
      contactos: reunion.contactos,
      location: reunion.location,
      afiche: reunion.afiche,
      position: index
  end
end
directory "_data/recursos/" do
  dato.recursos.each_with_index do |recurso, index|
    create_data_file "#{index}-#{recurso.titulo.parameterize}.yml", :yaml,
      titulo: recurso.titulo,
      archivo: recurso.archivo,
      download: "https://dato-images.imgix.net#{recurso.archivo.path}?dl=#{recurso.titulo.parameterize}",
      url: recurso.archivo.url,
      position: index
  end
end
