class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         after_save :default_values
         validates :email, presence: true, uniqueness: true

          def default_values
            if self.rol == nil

            self.rol = 'user'
            self.save
          end
          end



end
