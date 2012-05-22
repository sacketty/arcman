class CreateDossiersTagsTable < ActiveRecord::Migration
  def change
    create_table :dossiers_tags, :id => false do |t|
      t.references :dossier, :null => false
      t.references :tag, :null => false
    end
    add_index(:dossiers_tags, [:dossier_id, :tag_id], :unique => true)
  end
end
