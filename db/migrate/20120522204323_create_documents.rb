class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :descriptif
      t.date :date
      t.string :url
      t.string :position_type
      t.integer :position_id

      t.timestamps
    end
  end
end
