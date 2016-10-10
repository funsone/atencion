class CreateOficios < ActiveRecord::Migration[5.0]
  def change
    create_table :oficios do |t|
      t.string :institucion
      t.date :fecha_de_emision
      t.text :descripcion

      t.timestamps
    end
  end
end
