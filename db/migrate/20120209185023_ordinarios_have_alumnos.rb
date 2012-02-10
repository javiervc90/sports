class OrdinariosHaveAlumnos < ActiveRecord::Migration 
 def changes
 	add_column :ordinarios, :alumno_cuenta, :integer	
 end
end
