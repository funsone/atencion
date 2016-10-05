class CreateSolicituds < ActiveRecord::Migration[5.0]
  def change
    create_table :solicituds do |t|
      t.references :ayuda, foreign_key: true
      t.references :persona, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
