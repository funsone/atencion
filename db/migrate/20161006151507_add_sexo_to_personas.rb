class AddSexoToPersonas < ActiveRecord::Migration[5.0]
  def change
    add_column :personas, :sexo, :integer
  end
end
