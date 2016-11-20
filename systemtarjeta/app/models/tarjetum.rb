class Tarjetum < ActiveRecord::Base
#belongs_to :usuario
   has_one :usuario
#  has_one :user

validates :user_id, presence: true, uniqueness: true


end
