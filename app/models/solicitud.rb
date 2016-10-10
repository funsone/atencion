class Solicitud < ApplicationRecord
  belongs_to :ayuda
  belongs_to :persona
    self.per_page = 3
end
