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

ActiveRecord::Schema.define(:version => 20120208203217) do

  create_table "actividades", :force => true do |t|
    t.string   "nombre"
    t.string   "administrador"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alumnos", :force => true do |t|
    t.string   "nombre"
    t.integer  "cuenta"
    t.string   "facultad"
    t.string   "carrera"
    t.string   "semestre"
    t.string   "grupo"
    t.boolean  "a1"
    t.boolean  "a2"
    t.boolean  "a3"
    t.boolean  "a4"
    t.integer  "asistencias1"
    t.integer  "creditos1"
    t.boolean  "b1"
    t.boolean  "b2"
    t.boolean  "b3"
    t.boolean  "b4"
    t.integer  "asistencias2"
    t.integer  "creditos2"
    t.boolean  "c1"
    t.boolean  "c2"
    t.boolean  "c3"
    t.boolean  "c4"
    t.integer  "asistencias3"
    t.integer  "creditos3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "actividade_id"
  end

  create_table "ordinarios", :force => true do |t|
    t.integer  "asistenciaso"
    t.integer  "creditoso"
    t.boolean  "o1"
    t.boolean  "o2"
    t.boolean  "o3"
    t.boolean  "o4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
