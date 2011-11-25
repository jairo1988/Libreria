# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111125093945) do

  create_table "categorias", :force => true do |t|
    t.string   "categoria_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.integer  "codigo"
    t.string   "poblacion"
    t.string   "provincia"
    t.string   "email"
    t.integer  "telefono"
    t.string   "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuentas", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nif"
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "codigo"
    t.string   "provincia"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "administrador"
  end

  create_table "libros", :force => true do |t|
    t.string   "autor"
    t.string   "editorial"
    t.string   "anyo"
    t.integer  "paginas"
    t.decimal  "precio"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "titulo"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.boolean  "proximolibro"
    t.integer  "stock"
    t.integer  "categoria_id"
    t.datetime "fecha_disponible"
  end

  create_table "reservas", :force => true do |t|
    t.integer  "libro_id"
    t.integer  "cuenta_id"
    t.datetime "fecha_reserva"
    t.integer  "cantidad"
  end

end
