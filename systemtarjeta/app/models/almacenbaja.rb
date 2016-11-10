class Almacenbaja < ActiveRecord::Base
  belongs_to :motivo
  belongs_to :user
  belongs_to :tarjetum

  before_save :default_values
  after_save :baja_tarjeta
cattr_accessor :current_user
   def default_values
     self.user = Almacenbaja.current_user
     self.tarjetum = Tarjetum.find_by(user_id: Almacenbaja.current_user.id)
   end

   def baja_tarjeta
       tarjeta = Tarjetum.find_by(user_id: Almacenbaja.current_user.id)
      tarjeta.fecha_baja = Time.zone.today
      tarjeta.save
   end

end
