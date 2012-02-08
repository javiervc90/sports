class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.string :nombre
      t.string :administrador
      t.datetime :fecha_inicio
      t.datetime :fecha_termino

      t.timestamps
    end
  end
end
