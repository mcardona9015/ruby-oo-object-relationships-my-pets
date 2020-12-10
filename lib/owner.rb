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
      if cat.owner == self
         cats << cat
        #binding.pry
      end
    end
    cats
   end

   def dogs
    dogs = []
    Dog.all.each do |dog| 
      if dog.owner == self
         dogs << dog
        #binding.pry
      end
    end
    dogs
   end

   def buy_dog(name)
    Dog.new(name, self)
   end

   def buy_cat(name)
    Cat.new(name, self)
   end

   def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
   end

   def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
   end

   def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end




end

# tom = Owner.new("Tom")
# garfield = Cat.new("Garfield", tom)
# maru = Cat.new("Maru", tom)
# binding.pry
# 0
