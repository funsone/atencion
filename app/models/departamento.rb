class Departamento < ApplicationRecord
 validates :nombre, presence: true
 has_many :ayudas, dependent: :destroy
   self.per_page = 10
end
