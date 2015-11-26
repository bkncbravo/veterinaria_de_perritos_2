class Animal < ActiveRecord::Base
  belongs_to :cliente
  validates :nombre, presence: true
  validates :color, presence: true
  validates :raza, presence: true
  validates :tamano, presence: true
  validates :fechanacimiento, presence: true
  scope :recientes, ->{order("created_at desc")}

  has_many :historial
  has_many :servicio, :through => :historial
end
