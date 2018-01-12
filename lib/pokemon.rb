class Pokemon

attr_accessor :name, :type, :id, :db

def initialize(id:nil, name:, type:, db:)
  @id=id
  @name=name
  @type=type
  @db=db
end

def self.save(name, type, db)
  sql=<<-SQL
  INSERT INTO pokemon (name, type) VALUES (?,?)
  SQL

  db.execute(sql,name,type)
  end

def self.find(id,db)
  sql=<<-SQL
  SELECT * FROM pokemon
  WHERE id=?
  LIMIT 1
  SQL

  db.execute(sql,id).map do |row|
     Pokemon.new(id: row[0], name: row[1], type: row[2], hp: row[3], db: db)
end

end
