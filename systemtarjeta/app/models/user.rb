class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         before_save :default_values
         validates :email, presence: true, uniqueness: true

          def default_values
            self.rol = 'user'
          end

           

end
