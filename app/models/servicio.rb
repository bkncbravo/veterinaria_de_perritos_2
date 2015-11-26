class Servicio < ActiveRecord::Base

  has_many :historial
  has_many :animal, :through => :historial

end
