class Servicio < ApplicationRecord
	 has_many :profesions, :through => :assignments
	 has_many :assignments , :dependent => :destroy
end
