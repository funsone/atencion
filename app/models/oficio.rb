class Oficio < ApplicationRecord
  validates :institucion,:descripcion,:fecha_de_emision,presence:true
    self.per_page = 10
end
