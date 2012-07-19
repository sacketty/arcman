class CreateDocumentsDossiers < ActiveRecord::Migration
  def change
    create_table :documents_dossiers, :id => false do |t|
      t.references :document, :null => false
      t.references :dossier, :null => false
    end
    add_index(:documents_dossiers, [:dossier_id, :document_id], :unique => true)
  end
end
