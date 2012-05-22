class Document < ActiveRecord::Base
  attr_accessible :date, :descriptif, :position, :url
  belongs_to :dossier, :foreign_key=>:emplacement_id
  has_and_belongs_to_many :tags
end
