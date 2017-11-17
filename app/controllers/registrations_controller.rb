class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:rut , :password, :nombre, :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes ,:password_confirmation , :current_password)    
  end

  def account_update_params
    params.require(:user).permit(:rut , :password, :nombre, :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes ,:password_confirmation , :current_password)
  end
end

