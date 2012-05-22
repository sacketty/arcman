class Dossier < Position
  belongs_to :position, :foreign_key=>:emplacement_id, :polymorphic=> true
  has_and_belongs_to_many :tags
end