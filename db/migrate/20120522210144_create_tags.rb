class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :nom
    end
  end
end
