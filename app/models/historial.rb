class Historial < ActiveRecord::Base
  belongs_to :animal
  belongs_to :servicio
end
