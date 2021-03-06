class Persona < ApplicationRecord
  has_many :solicituds, dependent: :destroy

   validates :cedula, :tipo_de_cedula, :direccion, :nombres, :apellidos, :fecha_de_nacimiento, :municipios, presence: true
    validates :cedula, uniqueness: { case_sensitive: false, message: 'Ya se encuentra registrada' }, numericality: { only_integer: true }
     validates :nombres, :apellidos, length: { in: 0..50 }
      validates :telefono, length: { is: 11 }, allow_blank: true, numericality: { only_integer: true }
        attr_readonly :cedula, :tipo_de_cedula
        validates :fecha_de_nacimiento, date: { before: proc { Time.now }, message: 'es inválida, ingrese una fecha pasada' }

  self.per_page = 10
      def self.search(search)
   search = search.downcase

     where('cedula = ?', "#{search}").order(:id)

end
end
