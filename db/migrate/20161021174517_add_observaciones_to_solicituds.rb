class AddObservacionesToSolicituds < ActiveRecord::Migration[5.0]
  def change
      add_column :solicituds, :observaciones, :text
  end
end
