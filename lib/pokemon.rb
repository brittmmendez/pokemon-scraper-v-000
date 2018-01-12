class Pokemon

attr_accessor :name, :type, :id, :db

def self.initialize(id:, name:, type:)
  @id=id
  @name=name
  @type=type


end


end
