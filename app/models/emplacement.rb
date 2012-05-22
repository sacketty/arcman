class Emplacement < Position
  belongs_to :salle, :foreign_key=>:emplacement_id, :polymorphic=> true
end