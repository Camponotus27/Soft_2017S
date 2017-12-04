class Usercomuna < ApplicationRecord
  belongs_to :comuna
  belongs_to :user




 # after_create :save_comunas
 # after_update :save_comunas

 # after_create :save_profesions
 # after_update :save_profesions

  def comunas= (value)

    @comunas = value
    
  end

   def profesions= (value)

    @profesions = value
    
  end


  private 

  def save_comunas
    @comunas.each do |comuna_id|
      usercomunas.create(comuna_id: comuna_id , user_id: self.id )
    end
  end

   def save_profesions
    @profesions.each do |profesion_id|
      userprofesions.create(profesion_id: profesion_id , user_id: self.id )
    end
  end

end
