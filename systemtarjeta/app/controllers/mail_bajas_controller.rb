class MailBajasController < ApplicationController

  def enviobaja
    ActionCorreo.sample_email_bajauser(current_user).deliver
  end
end
