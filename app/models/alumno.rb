class Alumno < ActiveRecord::Base
	attr_accessible	:nombre
	attr_accessible :cuenta
	belongs_to :actividade
	has_one :ordinario

	#validations:
	validates :nombre, :uniqueness => true
	validates :nombre, :presence => true
	validates :cuenta, :uniqueness => true
	validates :cuenta, :numericality => {:only_integer => true}
	validates :cuenta, :length => {:is => 8}
	validates :cuenta, :presence => true
	validates :semestre, :presence => true

	#validations for credits and assistances

	#validates :
end
