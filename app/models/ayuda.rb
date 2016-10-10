class Ayuda < ApplicationRecord
  belongs_to :departamento
  self.per_page = 3
end
