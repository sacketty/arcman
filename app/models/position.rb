class Position < ActiveRecord::Base
  attr_accessible :description, :emplacement
  belongs_to :emplacement, :polymorphic=> true
  has_and_belongs_to_many :tags
end
