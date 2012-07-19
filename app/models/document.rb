class Document < ActiveRecord::Base
  attr_accessible :date, :descriptif, :position, :url
  has_and_belongs_to_many :dossiers
  has_and_belongs_to_many :tags
end
