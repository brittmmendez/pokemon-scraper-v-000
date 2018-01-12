class Pokemon

attr_accessor :name, :type

def self.initialize(id, name, type, db)
  @name=name
  @type=type
  @db=db

end


end
