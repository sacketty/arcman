class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :descriptif
      t.date :date
      t.string :url
      t.timestamps
    end
  end
end
