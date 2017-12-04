class Comuna < ApplicationRecord

	has_many :usercomunas
    has_many :users, through:  :usercomunas

end
