class HorarioSemana < ApplicationRecord
	has_many :diahorarios
  	has_many :dia_horario_semanas, through:  :diahorarios

  	before_validation :set_status_because_rails_cannot, on: :create

  	

      def set_status_because_rails_cannot
        self.users_id ||= 2
      end
end
