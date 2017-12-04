class RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:user).permit(:rut , :password, :nombre, :apellido_materno , :apellido_paterno , :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes ,:password_confirmation , :current_password ,  {:comuna_ids => []} ,{:profesion_ids => []})    
  end

  def account_update_params
    params.require(:user).permit(:rut , :password, :nombre, :apellido_materno , :apellido_paterno, :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes ,:password_confirmation , :current_password  ,{:comuna_ids => []}  ,{:profesion_ids => []})
  end
end

 