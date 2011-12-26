namespace :actualizar do

  desc "Actualizar estado de libros"
  task :actualizar_estado_libros => :environment do
    Libro.proximos.scoped(:conditions => {:fecha_disponible => Date.today}).each do |libro|
      libro.pendiente
    end
  end
end



