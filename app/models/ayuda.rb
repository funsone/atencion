class Ayuda < ApplicationRecord
  belongs_to :departamento
  has_many :solicituds, dependent: :destroy
  self.per_page = 10
end
