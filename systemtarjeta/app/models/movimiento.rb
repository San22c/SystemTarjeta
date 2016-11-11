class Movimiento < ActiveRecord::Base
  belongs_to :user
  belongs_to :tarjetum
  belongs_to :premio
end
