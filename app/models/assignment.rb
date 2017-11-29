class Assignment < ApplicationRecord
  belongs_to :profesion , foreign_key: :profesion_id
  belongs_to :servicio , foreign_key: :servicio_id
end
