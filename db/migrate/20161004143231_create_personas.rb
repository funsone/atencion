class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :cedula
      t.integer :tipo_de_cedula
      t.date :fecha_de_nacimiento
      t.integer :municipios
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
