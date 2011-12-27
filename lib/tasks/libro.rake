namespace :actualizar do

  desc "Actualizar estado de libros"
  task :actualizar_estado_libros => :environment do
    Libro.proximos.scoped(:conditions => {:fecha_disponible => Date.today}).each do |libro|
      libro.stock=10
      libro.recibir
    end
    Libro.agotados.scoped(:conditions=>{:fecha_disponible=>Date.today}).each do |libro|
      libro.stock=10
      libro.encargar
    end
  end
end



