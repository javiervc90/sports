class Alumno < ActiveRecord::Base
	belongs_to :actividade
	has_one :ordinario
end
