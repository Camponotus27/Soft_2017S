class Comuna < ApplicationRecord

	has_many :usercomunas , :dependent => :destroy
    has_many :users, through:  :usercomunas

end
