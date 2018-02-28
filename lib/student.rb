require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(id = nil, name, grade)
      @id = id
      @name = name
      @grade = grade
  end
  
  
  
  
  
  def save
      sql = 'INSERT INTO students (name, grade)
      VALUES (?, ?)'
       DB[:conn].execute(sql, name, grade)
  end
  
  
  def self.new_from_db
    
  end
  
  
  def self.find_by_name
    
  end
  
  
  def update
    
  end
  
  
  def name
     @name
  end
  
  
  def grade
     @grade  
  end
  
  
  def id
     @id  
  end
  # yo
  
  def self.create_table
     sql = "CREATE TABLE students (
       id INTEGER PRIMARY KEY AUTO_INCREMENT,
       name TEXT,
       grade TEXT
       );
       "
     DB[:conn].execute(sql)
  end
  
  def self.drop_table
     sql = "DROP TABLE students"
     DB[:conn].execute(sql)
  end
end
