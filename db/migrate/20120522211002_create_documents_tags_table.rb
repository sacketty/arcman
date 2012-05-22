class CreateDocumentsTagsTable < ActiveRecord::Migration
  def change
    create_table :documents_tags, :id => false do |t|
      t.references :document, :null => false
      t.references :tag, :null => false
    end
    add_index(:documents_tags, [:document_id, :tag_id], :unique => true)
  end
end
