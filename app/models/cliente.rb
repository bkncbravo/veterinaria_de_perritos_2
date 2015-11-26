class Cliente < ActiveRecord::Base
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :direccion, presence: true
  validates :correo, presence: true
  validates :celular, presence: true
  scope :recientes, ->{order("created_at desc")}
end
