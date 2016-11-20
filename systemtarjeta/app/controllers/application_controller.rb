class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

      before_filter :configure_permitted_parameters, if: :devise_controller?

      protected

          def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fecha_baja,:rol,:nombre, :email, :password, :current_password, :apellidos, :telefono, :direccion) }
              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fecha_baja,:rol,:nombre, :email, :password, :current_password, :apellidos, :telefono, :direccion) }
          end

          before_filter :set_current_user

def set_current_user
  Almacenbaja.current_user = current_user

end
  end
