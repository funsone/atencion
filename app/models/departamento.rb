class Departamento < ApplicationRecord
 validates :nombre, presence: true
   self.per_page = 10
end
