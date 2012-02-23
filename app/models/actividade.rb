class Actividade < ActiveRecord::Base
	has_many :alumnos

	#validations:
	validates :nombre, :uniqueness => true
	validates :nombre, :presence => true
end
