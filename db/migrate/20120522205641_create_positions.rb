class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :description
      t.string :type
      t.references :emplacement
    end
    add_index(:positions, [:emplacement_id], :unique=>true)
  end
end
