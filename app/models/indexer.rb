class Indexer
  include Mongoid::Document
  field :code, type: Integer, default: 0
  
  def self.next_value
    idx = first
    idx ||= create
    idx.code += 1
    idx.save
    idx.code
  end
end
