class ActividadesHaveAlumnos < ActiveRecord::Migration
  def change
  	add_column :alumnos, :actividade_id, :integer
  end
end
