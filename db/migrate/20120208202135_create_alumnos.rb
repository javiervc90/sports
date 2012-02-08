class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.integer :cuenta
      t.string :facultad
      t.string :carrera
      t.string :semestre
      t.string :grupo
      t.boolean :a1
      t.boolean :a2
      t.boolean :a3
      t.boolean :a4
      t.integer :asistencias1
      t.integer :creditos1
      t.boolean :b1
      t.boolean :b2
      t.boolean :b3
      t.boolean :b4
      t.integer :asistencias2
      t.integer :creditos2
      t.boolean :c1
      t.boolean :c2
      t.boolean :c3
      t.boolean :c4
      t.integer :asistencias3
      t.integer :creditos3

      t.timestamps
    end
  end
end
