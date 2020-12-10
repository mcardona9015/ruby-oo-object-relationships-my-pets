require 'pry'
class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

   def say_species
    "I am a #{self.species}."
   end

   def self.all
    @@all
   end

   def self.count
    @@all.count
   end

   def self.reset_all
    @@all.clear
   end

   def cats
    cats = []
    Cat.all.each do |cat| 
      if cat.owner == self.name
         cats << cat
#         binding.pry
      end
    end
    cats
#    binding.pry
    # if Cat.all.select{|cat| cat.owner == self.name}
    # cats << Cat.all.select{|cat| cat.owner == self.name}
   end


end

# tom = Owner.new("Tom")
# garfield = Cat.new("Garfield", "Tom")
# #binding.pry
#0
