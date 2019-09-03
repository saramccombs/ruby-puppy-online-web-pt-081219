# create a class named Dog 
# create a class variable @@all set to an empty Array
# push self into @@all every #new Dog
# create a method named #all that reads the @@all variable
# create a method named #print_all that iterates over @@all and puts their names
# refactor initialize to move the push of self into #save while #initialize uses #save
# create a #clear_all method that resets @@all 

class Dog 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all 
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
    @@all.each {|dog| puts dog.name }
  end
  
  def save
    @@all << self
  end
  
end