class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :description
      t.string :type
      t.string :emplacement_type
      t.integer :emplacement_id

      t.timestamps
    end
  end
end
