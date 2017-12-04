class RegistroprofesionalesController < ApplicationController


 def update
 	@user.comuna = params[:comuna]

 	respond_to do |format|
      if @user.update(account_update_params)
        format.html { redirect_to @user, notice: 'La users de actualizo correctamente.' }
      else
        format.html { render :edit }
      end
    end
 	 
 end
end
