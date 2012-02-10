class CreateOrdinarios < ActiveRecord::Migration
  def change
    create_table :ordinarios do |t|
      t.string  :nombre
      t.integer :asistenciaso
      t.integer :creditoso
      t.boolean :o1
      t.boolean :o2
      t.boolean :o3
      t.boolean :o4

      t.timestamps
    end
  end
end
